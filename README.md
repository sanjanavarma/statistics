Statistical tests

There are two types of T-tests

1. Independent T-test
    1. One Sample t-test
    2. Two Sample t-test
2. Paired T-test

One Sample t-test

  This test is used to test whether or not the mean population is equal to some value.
  Instead of taking the samples from the entire population we take simple random sampling of few of them and use mean to estimate true population. Following that we     test if it is statistically significant.

  One Sample t-test always uses null hypothesis
  H0: μ = μ0 (population mean is equal to some hypothesized value μ0)

  We use the following formula to calculate the test statistic t:

  t = (x – μ) / (s/√n)

  where:
    x: sample mean
    μ0: hypothesized population mean
    s: sample standard deviation
    n: sample size

  Based on t-test value calculate p-value, if p-value < significance level we reject null hypothesis


Two Sample t-test

  A two sample t-test is used to determine whether or not two population means are equal.

  A two-sample t-test always uses the following null hypothesis:

    H0: μ1 = μ2 (the two population means are equal)

  The alternative hypothesis can be either two-tailed, left-tailed, or right-tailed:

    H1 (two-tailed): μ1 ≠ μ2 (the two population means are not equal)
    H1 (left-tailed): μ1 < μ2 (population 1 mean is less than population 2 mean)
    H1 (right-tailed): μ1> μ2 (population 1 mean is greater than population 2 mean)

   t = (x1 – x2)  /  sp(√1/n1 + 1/n2)
   sp = √ (n1-1)s12 +  (n2-1)s22 /  (n1+n2-2)
 
 Paired Sample t-test
 
   A paired samples t-test is used to compare the means of two samples when each observation in one sample can be paired with an observation in the other sample.
   1. A measurement is taken on a subject before and after some treatment – e.g. the max vertical jump of college basketball players is measured before and after             participating in a training program.
   2. A measurement is taken under two different conditions – e.g. the response time of a patient is measured on two different drugs.
   
   t = xdiff / (sdiff/√n)

  where:

  xdiff: sample mean of the differences
  s: sample standard deviation of the differences
  n: sample size (i.e. number of pairs)
 
Welch’s t-test is 

  Used to test whether or not the means of two populations are equal.
  
  This type of test does not assume that the two samples have equal variances. If you would like to make this assumption, you should instead use the two sample t-test   calculator.
