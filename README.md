# ABBench
A performance testing utility for Pharo Smalltalk.

ABBench is a lightweight utility for conducting performance A/B tests on optimizations made to Pharo Smalltalk code.

## Installation

To install ABBench, execute the following code in a playground:

```
Metacello new
  githubUser: 'emdonahue' project: 'ABBench' commitish: 'master' path: ''; 
  baseline: 'ABBench';
  load.
```

## Quick Start

To see ABBench in action, print the following in a workspace to benchmark two versus one division operations:

```
ABBench bench: [ ABBench a: [ 1/1/1 ] b: [ 1/1 ] ].
```

You should see a message such as  "B is 21.12% FASTER than A," although the percentage will vary between runs. This example runs the main #bench: method on a simple code example containing two code paths. One path performs two divisions and the other performs one.

## Usage

Suppose you want to test whether a change to #myMethod will improve its performance. At the site where you want to make the change, insert the following code:

```
myMethod
...
  ABBench a: [ ...old code...] b: [...optimized code...].
...
```
Afterword, in a Playground, run your program with ABBench>>bench: by printing the following line:

```
ABBench bench: [ MyObject new myMethod ].
```
ABBench will run #myMethod repeatedly, alternating between the A and B branches until it gathers enough statistical evidence to make a determination as to which branch, if either, is faster.

The ABBenchReport object returned by ABBench>>bench can also be used within other code via the #bIsFaster, #bIsSlower, and #bIsEqual test methods.

## Roadmap
- Enable easy API access to statistical sensitivity parameters
- Create aggregate reports to facilitate performance regression suites
- Integrate inspector vizualization of runtimes

Contributions welcome!
