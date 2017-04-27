package massive.munit.command;

import massive.haxe.log.Log;
import massive.munit.Target.TargetType;
import massive.munit.report.ReportFormatter;
import massive.munit.report.ReportType;
import massive.munit.report.TeamCityReportFormatter;
import massive.sys.io.File;

/**
The ReportCommand converts raw report data into a specific format for a 3rd party tool or CI platform
*/
class ReportCommand extends MUnitTargetCommandBase {
	var reportType:ReportType;
	var minCoverage:Int;
	var reportDir:File;
	var destDir:File;
	
	public function new() {
		super();
		minCoverage = 0;
		reportType = null;
	}
	
	override public function initialise() {
		reportDir = config.report;
		if(reportDir == null) error("Default report directory is not set. Please run munit config.");
		if(!reportDir.exists) reportDir.createDirectory();
		getTargetTypes();
		getReportFormatType();
		getDestinationDir();
		getMinCoverage();
	}
	
	function getTargetTypes() {
		//first get from console
		targetTypes = getTargetsFromConsole();
		if(targetTypes.length == 0) {
			//look up generated results summary
			var file =  reportDir.resolveFile("test/results.txt");
			if(file.exists) {
				var contents = file.readString();
				var lines = contents.split("\n");
				var reg:EReg = new EReg("under (.*) using", "g");
				for(line in lines) { 
					line = StringTools.trim(line);
					if(reg.match(line)) {
						switch(reg.matched(1)) {
							case js: targetTypes.push(js);
							case as3: targetTypes.push(as3);
							case neko: targetTypes.push(neko);
							case cpp: targetTypes.push(cpp);
							case java: targetTypes.push(java);
							case cs: targetTypes.push(cs);
							case python: targetTypes.push(python);
							case php: targetTypes.push(php);
						}
					}
				}
			}
		}
		//last option is to get from default target types
		if (targetTypes.length == 0) targetTypes = config.targetTypes.copy();
	}
	
	function getReportFormatType() {
		var format:String = console.getNextArg();
		if(format == null) error("Please specify one of the following report types: " + Std.string(Type.allEnums(ReportType)));
		else
		{
			try
			{
				format = StringTools.trim(format);
				reportType = Type.createEnum(ReportType, format.toLowerCase());
			}
			catch(e:Dynamic)
			{
				print("Error: invalid report type: " + format);
				error("Please specify one of the following report types: " + Std.string(Type.allEnums(ReportType)));
			}
		}
		Log.debug("reportType: " + reportType);
	}
	
	function getDestinationDir()
	{
		var dest:String = console.getNextArg();
		if (dest != null)
		{
			destDir = config.dir.resolveDirectory(dest);
		}
		else
		{
			destDir =  config.report;
		}
		Log.debug("destDir: " + destDir);
	}
	
	function getMinCoverage()
	{
		var coverage:String = console.getOption("coverage");
		if (coverage != null)
		{
			minCoverage = Std.parseInt(coverage);
			Log.debug("minCoverage " + coverage);
		}
	}
	
	override public function execute():Void
	{
		var files = getSummaryFiles();
		var formatter = getReportFormatterForType(reportType);
		formatter.format(files, destDir, minCoverage);
	}
	
	function getSummaryFiles():Array<File> {
		var result:Array<File> = [];
		for(target in targetTypes) {
			var file = reportDir.resolveFile("test/summary/" + target + "/summary.txt");
			if(!file.exists) print("Warning: Report summary file does not exist for target (" + target + "): " + file);
			result.push(file);
		}
		return result;
	}
	
	function getReportFormatterForType(type:ReportType):ReportFormatter {
		return switch(type) {
			case teamcity: new massive.munit.report.TeamCityReportFormatter();
			default: null;
		}
	}
}