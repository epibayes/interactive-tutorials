---
toc: true
title: "Autocorrelation Everywhere"
---

# Autocorrelation Everywhere

One way to summarize the key challenge this book is meant to address is
to ask and answer questions about how we understand, measure, and
intervene on epidemiological systems in which *autocorrelation* plays a
key role. In the analysis of time-series data, autocorrelation arises
all the time: Past measures of an individual or location are often more
similar to the present measures at that location than values from
another place or person. If the time series is reflective of some
process, e.g. infectious disease transmission, its autocorrelation
reflcts the way its history influences its present state.

Autocorrelation is also a central concern of spatial analysis: Legendre
([1](#ref-legendre1993)) succinctly defined spatial autocorrelation as
“the property of random variables taking values, at pairs of locations a
certain distance apart, that are more similar (positive autocorrelation)
or less similar (negative autorcorrelation) than expected for *randomly
asssociated pairs of observations*[1]”. In the domain of social network
analysis, TFL comes into play when we think about the notion of
*homophily*, i.e. that “birds of a feather flock together”
([2](#ref-goodreau2009)).

Howie

## Tobler’s First Law

In 1970, the geographer Waldo Tobler coined what is often referred to as
Tobler’s first law (TFL), which states that “\[e\]verything is related
to everything else, but near things are more related than distant
things” ([3](#ref-tobler1970)). What Tobler is talking about here is the
idea that spatial autocorrelation is ubiquitous in geography. While TFL
may sound obvious, Goodchild shows its importance and far-reaching
implications through a simple thought ecperiment:

> “Perhaps the easiest way to see the validity and value of TFL is
> through a thought experiment, by trying to imagine a world in which it
> is not true. In such a world, the full range of conditions could be
> encountered in every minute portion of the world. Every room, for
> example, might contain the full observed range of the Earth’s
> topographic variation, from the bottom of the Marianas Trench to the
> summit of Mount Everest; and the full range of climatic conditions as
> well. This is the world of white noise, a world that would be
> impossible to describe, live in, sense, navigate through, or farm.”
> ([4](#ref-goodchild2004))

The notion of the role of ‘nearness’ and ‘farness’ in shaping the
similarity of outcomes is really the heart of a contextual approach to
epidemiology. Tobler was speaking specifically about geographic distance
when he made this statement. Specifically, he was referring to the way
human populations were distributed in space, and observing that their
composition and density were spatially related, with nearby
neighborhoods more similar to each other than distant ones. Since Tobler
wrote, others have generalized TFL to a more generic notion of nearness
or farness across different types of space.

Applying this idea to a broad array relationships is what it means, at
least to me, to do relational or contextual epidemiology. Simply put,
this is just the idea that events separated by less time are more likely
to be similar - on average - than those separated by longer periods of
time.

#### What does closeness *do*?

Miller ([5](#ref-miller2004)) specifically draws on systems theory to
argue that the very simple concept of nearness is enough to explain
complex geographic phenomena including natural ecosystems and economies,
because it is not the nearness that does the ‘doing’ but that
interaction between dynamic components is more likely over short
spatial, temporal, or social distances than over longer ones.

### Similarity is meaningless without variation

-   No similarity without variability (i.e. the real first law according
    to Goodchild ([4](#ref-goodchild2004)))

### Why negative autocorrelation matters

## How does autocorrelation manifest in the real world?

### Spatial

1.  Gradients: relatively smooth variability over space, e.g. as a
    function of elevation in ecological systems
    ([1](#ref-legendre1993)). According to Legendre, in a true linear
    gradient the errors at each location are not autocorrelated with
    each other.

2.  Patchiness: Discreate areas separated by ecological discontinuities
    or interfaces ([1](#ref-legendre1993)).

3.  Getis ([6](#ref-getis2010a)) discusses how it can be difficult to
    disentangle local spatial autocorrelation from global, i.e. when
    there is global autocorrelation we are likely to also find local, so
    have to be careful about interpreting.

4.  Griffith ([7](#ref-griffith2023a)) makes the point that positive and
    negative spatial autocorrelation commonly co-occur, so that it is
    important to not over-focus on one vs. the other.

5.  Also points out that the nature of autocorrelation will be a
    function of scale. Provides the Snow Cholera data as an example: At
    small scales, there will be a combination of positive (PSA) and
    negative spatial autocorrelation (NSA), while at higher levels
    (e.g. all of london) the prevailing pattern will be PSA due to the
    relatively small size of the area of the outbreak.

### Temporal

### Social

#### Stratification & Inequality

#### Networks

## Nearness, farness, and the problem of scale

# References

<div id="refs" class="references csl-bib-body">

<div id="ref-legendre1993" class="csl-entry">

<span class="csl-left-margin">1. </span><span
class="csl-right-inline">Legendre P. Spatial Autocorrelation: Trouble or
New Paradigm? *Ecology* \[electronic article\]. 1993;74(6):1659–1673.
(<https://www.jstor.org/stable/1939924>). (Accessed October 20,
2023)</span>

</div>

<div id="ref-goodreau2009" class="csl-entry">

<span class="csl-left-margin">2. </span><span
class="csl-right-inline">Goodreau SM, Kitts JA, Morris M. [Birds of a
feather, or friend of a friend? Using exponential random graph models to
investigate adolescent social
networks.](https://doi.org/10.1353/dem.0.0045) *Demography*.
2009;46(1):103–125. </span>

</div>

<div id="ref-tobler1970" class="csl-entry">

<span class="csl-left-margin">3. </span><span
class="csl-right-inline">Tobler WR. A Computer Movie Simulating Urban
Growth in the Detroit Region. *Economic Geography* \[electronic
article\]. 1970;46:234–240. (<https://www.jstor.org/stable/143141>).
(Accessed January 13, 2022)</span>

</div>

<div id="ref-goodchild2004" class="csl-entry">

<span class="csl-left-margin">4. </span><span
class="csl-right-inline">Goodchild MF. The Validity and Usefulness of
Laws in Geographic Information Science and Geography. *Annals of the
Association of American Geographers* \[electronic article\].
2004;94(2):300–303.
(<https://doi.org/10.1111/j.1467-8306.2004.09402008.x>). (Accessed
November 2, 2020)</span>

</div>

<div id="ref-miller2004" class="csl-entry">

<span class="csl-left-margin">5. </span><span
class="csl-right-inline">Miller HJ. Tobler’s First Law and Spatial
Analysis. *Annals of the Association of American Geographers*
\[electronic article\]. 2004;94(2):284–289.
(<https://doi.org/10.1111/j.1467-8306.2004.09402005.x>). (Accessed
November 2, 2020)</span>

</div>

<div id="ref-getis2010a" class="csl-entry">

<span class="csl-left-margin">6. </span><span
class="csl-right-inline">Getis A. Spatial Autocorrelation. In: Fischer
MM, Getis A, eds. *Handbook of Applied Spatial Analysis*. Berlin,
Heidelberg: Springer Berlin Heidelberg; 2010 (Accessed October 20,
2023):255–278.(<https://link.springer.com/10.1007/978-3-642-03647-7_14>).
(Accessed October 20, 2023)</span>

</div>

<div id="ref-griffith2023a" class="csl-entry">

<span class="csl-left-margin">7. </span><span
class="csl-right-inline">Griffith DA. Spatial autocorrelation mixtures
in geospatial disease data: An important global epidemiologic/public
health assessment ingredient? *Transactions in GIS* \[electronic
article\]. 2023;27(3):730–751.
(<https://onlinelibrary.wiley.com/doi/abs/10.1111/tgis.13042>).
(Accessed October 20, 2023)</span>

</div>

</div>

[1] Emphasis added
