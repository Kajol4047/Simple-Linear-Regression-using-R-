# Simple-Linear-Regression-using-R-
This repo solves 2 linear regression problems. 1) Broadway box office prediction using prior week's data. 2) Invoice processing time prediction based on invoice count. Includes confidence intervals, hypothesis tests, &amp; prediction intervals.
# Problem1

The web site www.playbill.com provides weekly reports on the box office

ticket sales for plays on Broadway in New York. We shall consider the
data

for the week October 11–17, 2004 (referred to below as the current
week).

The data are in the form of the gross box office results for the current
week

and the gross box office results for the previous week (i.e., October
3–10,

2004). The data, plotted in the following Figure.

Fit the following model to the data: *Y* = *b*0 + *b*1*x* + *e* where
*Y* is the gross box

office results for the current week (in \$) and *x* is the gross box
office results for the

previous week (in \$). Complete the following tasks:

\(a\) Find a 95% confidence interval for the slope of the regression
model, *b*1 . Is

1 a plausible value for *b*1 ? Give a reason to support your answer.

\(b\) Test the null hypothesis *H<sub>o</sub>*: *b<sub>o</sub>* = 10000
against a two-sided alternative.

Interpret your result.

\(c\) Use the fitted regression model to estimate the gross box office
results for

the current week (in \$) for a production with \$400,000 in gross box
office

the previous week. Find a 95% prediction interval for the gross box
office results for the current week (in \$) for a production with
\$400,000 in gross

box office the previous week. Is \$450,000 a feasible value for the
gross box

office results in the current week, for a production with \$400,000 in
gross

box office the previous week? Give a reason to support your answer.

\(d\) Some promoters of Broadway plays use the prediction rule that next
week’s

gross box office results will be equal to this week’s gross box office
results.

Comment on the appropriateness of this rule.

<img src="https://github.com/Kajol4047/Simple-Linear-Regression-using-R-/blob/main/image1.png" style="width:4.488in;height:3.15954in" />

# Solution of the problem-1

**<span class="smallcaps">summary of model(m1) of problem 1</span>**

<img src="https://github.com/Kajol4047/Simple-Linear-Regression-using-R-/blob/main/image2.jpg" style="width:6.63333in;height:4.025in" />

### solution of a

<img src="https://github.com/Kajol4047/Simple-Linear-Regression-using-R-/blob/main/image3.jpg" style="width:4.51667in;height:0.9in" />

**comment:** 1 is a plausible value for *b*1  since it falls within the
confidence interval.

### solution of b

<img src="https://github.com/Kajol4047/Simple-Linear-Regression-using-R-/blob/main/image4.jpg" style="width:5.725in;height:1.525in" />

**comment:** since the T (calculated test statistic value) is less than
tval (critical value) , the test is insignificant and we can predict
that there is not enough evidence to reject Ho.

### Solution of c 

<img src="https://github.com/Kajol4047/Simple-Linear-Regression-using-R-/blob/main/image5.jpg"
style="width:7.26806in;height:0.56806in" />

**Comment:** since the prediction interval for a production with
\$400,000 in gross box office the previous week is 35982.8 to 439442.2
hence \$450,000 is not a feasible value for the gross box office results
in the current week.

### Solution of d

- If b1 = 1, then for every \$1 increase in the previous week's gross
  box office, the current week's gross box office will also increase by
  \$1 (i.e., they are equal).

- If b0 = 0, then if the previous week's gross box office is \$0, the
  current week's gross box office will also be \$0.

our result:

- we found that b1 = 1 is a plausible value (the confidence interval
  includes 1).

- However, the intercept (b0) is significantly different from 0 (the
  confidence interval does not include 0, and the t-test failed to
  reject the null hypothesis that b0 = 10000, which is very different
  from 0)

**Comment**:

- Approximation: The rule is a reasonable approximation because the
  slope (b1) is plausibly 1. This means that, on average, the current
  week's gross box office is close to the previous week's gross box
  office.

- Oversimplification: However, the rule is an oversimplification. The
  intercept (b0) is not 0, which means there's a baseline level of
  revenue even if the previous week's revenue is low. The regression
  model provides a more accurate prediction by accounting for this
  intercept.

<!-- -->

- Interpretation: the prediction rule is a reasonable approximation but
  an oversimplification, and that the regression model provides more
  accurate predictions. If a quick, rough estimate is sufficient, the
  rule might be acceptable.

# Problem-2

The manager of the purchasing department of a large company would like
to

develop a regression model to predict the average amount of time it
takes to

process a given number of invoices. Over a 30-day period, data are
collected on

the number of invoices processed and the total time taken (in hours).
The data

are available in the file invoices.txt. The following model

was fit to the data: *Y* = *b<sub>0 </sub>*+ *b<sub>1</sub> x* + *e*
where *Y* is the processing time and *x* is the

number of invoices.

Complete the following tasks,

\(a\) Find a 95% confidence interval for the start-up time, i.e.,
*b*<sub>0 </sub>.

\(b\) Suppose that a best practice benchmark for the average processing
time for

an additional invoice is 0.01 hours (or 0.6 minutes). Test the null
hypothesis

*H<sub>0</sub>* : *b<sub>1</sub>* = 0.01 against a two-sided
alternative. Interpret your result.

\(c\) Find a point estimate and a 95% prediction interval for the time
taken to process

130 invoices.

# Solution of the problem-2

**<span class="smallcaps">Figure of the plot of the given dataset with
least square fitted line</span>**

<img src="https://github.com/Kajol4047/Simple-Linear-Regression-using-R-/blob/main/image6.jpeg"
style="width:4.99354in;height:3.71944in" />

**<span class="smallcaps">summary of model(m2) of problem
2</span>**<img src="https://github.com/Kajol4047/Simple-Linear-Regression-using-R-/blob/main/image7.jpg"
style="width:5.10956in;height:4.48889in" />

### Solution of a

<img src="https://github.com/Kajol4047/Simple-Linear-Regression-using-R-/blob/main/image8.jpg"
style="width:3.94167in;height:0.93333in" />

### Solution of b

<img src="https://github.com/Kajol4047/Simple-Linear-Regression-using-R-/blob/main/image9.jpg"
style="width:7.26806in;height:1.36111in" />

Comment: since the calculated value is less than critical value of t
statistic, there is not enough evidence to reject the null hypothesis
indicate that the test is insignificant.

### Solution of c

<img src="https://github.com/Kajol4047/Simple-Linear-Regression-using-R-/blob/main/image10.jpg" style="width:7.26806in;height:0.75in" />Comment:
the model estimated that to process 130 invoices it takes 2.109624 hours
and 95% prediction interval to process 130 invoice is 1.422947 hours to
2.7963 hours.
