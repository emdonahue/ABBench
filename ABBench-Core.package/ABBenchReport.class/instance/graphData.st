inspecting
graphData
	"Generate a scatter plot of each pair of samples, red for A blue for B, to show the overall performance characteristics. Popups with actual values coming soon once Roassal3 supports them stably."
	"| c b |
	c := RSChart new.
	b := RSLegend new.
	b container: c canvas.
	b layout horizontal gapSize: 30.
	b text: 'A' withBoxColor: Color red.
	b text: 'B' withBoxColor: Color blue.
	b build.
	^ c
		addPlot: (RSScatterPlot new y: aSamples; color: Color red);
		addPlot: (RSScatterPlot new y: bSamples; color: Color blue);
		title: 'Samples';
		xlabel: 'Sample #';
		ylabel: 'Iterations / Second';
		addDecoration: RSHorizontalTick new integer;
		addDecoration: RSVerticalTick new integer;
		mustInclude0inX;
		mustInclude0inY;
		maxValueX: aSamples size + 1;
		maxValueY: 0.1 * (self max - self min) + self max;
		build;
		canvas."