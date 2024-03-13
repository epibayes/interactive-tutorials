---
title: Likelihood & Model Fit
theme: "deep-space"
---

# Exploring the relationship between likelihood and model fit

```js
import {html} from "npm:htl";
const file = FileAttachment("data/likelihood.json").json();
```

```js
// parsample = Math.floor(Math.random()*10);
const parsample = view(Inputs.button("Sample Dataset", {value: 1, reduce: () => 1+Math.floor(Math.random()*10)}));
const table = aq.from(file.likelihood);
const datatable = aq.from(file.data);
```

<div class="grid grid-cols-2", style="grid-auto-rows: auto; max-width:800px;">


<div class="card grid-colspan-2">

<h2> Some example data </h2>
<h3> Try moving the sliders for the slope (β) and intercept (α) to optimize the fit to the data. </h3>



```js
const i = Inputs.input(1)
```

```js
const zz = Inputs.range([0, 10], {step: 0.5, label:'Intercept (α)'})
const yy = Inputs.range([0, 1], {step: .05, label: "Slope (β)"})
const a = view(zz);
const b = view(yy);

const tv = table.filter(aq.escape(d => (Math.abs(d.b-b) < 0.00001) && (Math.abs(d.a - a) <  0.0001)));
```


```js
const minmax = table.rollup({minll: aq.op.min("ll"), maxll: aq.op.max("ll")}).objects()[0];

```

```js
const dp = datatable.filter(aq.escape(d => d.parset == parsample));
const dp2 = dp.filter(aq.escape(d => (Math.abs(d.b-b) < 0.00001) && (Math.abs(d.a - a) <  0.0001)))
```

```js
const llvals = dp.rollup({minll: aq.op.min("ll"), maxll: aq.op.max("ll")}).objects()[0]
```

```js

const allvals  = dp.groupby('a','b').rollup({ll: aq.op.sum("ll")})

const bvals  = dp.groupby('a','b').rollup({ll: aq.op.sum("ll")}).filter(aq.escape(d => Math.abs(a-d.a) < 0.0001 )).objects();

const avals  = dp.groupby('a','b').rollup({ll: aq.op.sum("ll")}).filter(aq.escape(d => Math.abs(b-d.b) < 0.0001 )).objects();

```







```js
Plot.plot({
 x: {domain:[0,9]},
 y: {domain:[0,9]},
  color: {label: "Density", legend: true, scheme:"turbo", type:"symlog"},
  marks: [

  // Plot.raster(tv.array("ll"), {x1: 0, x2: 10, y1: 0, y2: 10, width: 41, height: 41}),
    Plot.link([1], {
      x1: 0,
      y1: a,
      x2: 10,
      y2: (k) => a + (b*10),
      strokeOpacity: (k) => k === 1 ? 1 : 0.2
    }),
      Plot.dot(dp2, {x:"x", y:"y", stroke: (k) => Math.exp(-k.ll), r: (k) => Math.exp(-k.ll), strokeOpacity:1})
  ],

  width: 600
})

```
<p> In this example, the size and color of the dots indicates the probability density of each example data point. Try different values and see what happens to the relative likelihood of each point. </p>
</div>

</div>

## Likelihood in two dimensions

<div class="grid grid-cols-2", style="grid-auto-rows: auto; max-width:800px;">

<div class="card grid-colspan-2">

```js
Plot.plot({
  color: {label: "Negative Log-Likelihood", type: "symlog",  legend: true},
  marks: [
  Plot.raster(allvals.array("ll"), {y1: 0, y2:10, x1:0, x2:1, width: 21, height:21}),
  Plot.ruleX([b]),
  Plot.ruleY([a])
  ]
})
```
</div>


<div class="card grid-colspan-1">

<h2> Slope </h2>

```js
Plot.plot({
  marks: [
    Plot.line(bvals, {x:"b", y:"ll"}),
    Plot.ruleX([b])
  ]
    })
```

```js
const bb = view(Inputs.bind(Inputs.range([0, 1], {step: .05, label: "Slope (β)"}),yy))
```
</div>

<div class="card grid-colspan-1">
<h2> Intercept </h2>

```js
Plot.plot({
 // y: {domain: [-4000, 0]},
  marks: [
    Plot.line(avals, {x:"a", y:"ll"}),
    Plot.ruleX([a])
  ]
    })
```
```js
    const aa = view(Inputs.bind(Inputs.range([0, 10], {step: 0.5, label:'α'}),zz));
```

</div>


</div>

```js
```
