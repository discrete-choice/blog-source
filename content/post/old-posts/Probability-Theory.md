---
title: "Intuitions for Probability Theory"
date: 2020-08-01
math: true
categories: [Learning]
tags: [Math]
---

## Essence of Probability Theory 

- How to connect conditional probability with the regression model?\
  Remember conditional expectation of random variable $Y$ given that
  $X=x$ is\
  $$
  \begin{align}
  E[Y \mid X=x] = \sum_{y_i \in Y} P(y_i \mid x)
  \end{align}
  $$

That is to say, $E[Y \mid X=x]$ only depends on the value of $x$. In other words, $E[Y \mid X=x]$ is a function of $x$. Thus we can think of $E[Y \mid X=x]$ as a function of the value of random variable $X$
as follows:\
$$
\begin{align}
g(x) = E[Y \mid X=x] \Rightarrow E[Y \mid X] = g(X)
\end{align}
$$
Where function $g(X)$ could be our commonly used regression model.
This is an important concept that we interpret the conditional expectation as a random variable.

### Law of Iterated Expectations 

$$
E[Y] = E[E[Y \mid X]]
$$
Let us look again at the law of total probability for expectation.
Assume $E[Y \mid X] = g(X)$, we have:\
$$
\begin{align}
E[Y] &= \sum_{x_i \in \mathcal{X}} E[Y \mid X=x_i] P_X(x_i) \\
&= \sum_{x_i \in \mathcal{X}} g(x_i) P_X(x_i) \\
&= E[g(X)] = E[E[Y \mid X]]
\end{align}
$$
This is also known as **Law of Total Expectation**.

### Law of Total Variance: 

$$
Var(Y) = Var(E[Y \mid X]) + E[Var(Y \mid X)]
$$

Let $Z = E[Y \mid X]$, then,\
$$
Var(Z) = E[Z^2] - (E[Z])^2 = E[Z^2] - (E[Y])^2
$$

First, we are going to show the proof and introduce the intuition afterwards.\
$$
\begin{align}
& Var(Y \mid X) = E[Y^2 \mid X] - (E[Y \mid X])^2 \\
& \Rightarrow E[Var(Y \mid X)] = E[Y^2] - E[Z^2] \\
& \Rightarrow E[Var(Y \mid X)] + E[Z^2] = Var(Y) + (E[Y])^2 \\
& \Rightarrow Var(Y) = E[Var(Y \mid X)] + Var(E[Y \mid X])
\end{align}
$$

To understand the law of total variance intuitively, it is often useful to look at a population divided into several subgroups. In particular, suppose that we have this random experiment: We pick a person in the world at random and look at his/her height. Let us use variable $Y$ to represent the height. Define another random variable $X$ whose value depends on the country of the chosen person, where $X=1,2,3...n$.
$n$ is the number of countries in the world. Then, let us look at the two terms in the law of total variance.\
$$
Var(Y) = E[Var(Y \mid X)] + Var(E[Y \mid X])
$$

We can see that $Var(Y \mid X=i)$ denotes the variance of $Y$ in country
$i$. Thus $E[Var(Y \mid X)]$ is the average of variances across all countries. On the other hand, $E[Y \mid X=i]$ is average height in country $i$. Then $Var(E[Y \mid X])$ is the variance between countries. So we can interpret the law of total variance in the following way. Variance of $Y$ can be decomposed into two parts: the first is the average of variances from each individual country, while the second is the variance between height averages in each country.

### Convergence of Random Variable 

Before discussing convergence for a sequence of random variables, let us remember what convergence means for a sequence of real numbers.

> A sequence of real number $x_1, x_2, x_3 ...$ converges to a limit
> $x$ if\
 $$
 \lim_{n \to \infty} x_n = x
 $$
>
> That is, for any $\epsilon > 0$, there exists an $N_0 \in \mathbb{N}$ such
> that
>
 $$
 |x_n - x| < \epsilon, \text{ for } n > N_0
 $$

#### Sequence of Random Variables 

Here, we would like to discuss what we precisely mean by a sequence of random variables. Recall that, in any probability model, we have a sample space $S$ and a probability measure $P$. For simplicity, suppose that our sample space consists of a finite number of elements, i.e.,

$$
S = \{s_1, s_2, \ldots, s_k\}
$$

Then, a random variable $X$ is a mapping that assigns a real number to any of the possible outcomes $s_i$, which we may write as\
$$
X(s_i) = x_i, \text{ for } i=1,2,...,k
$$

When we have a sequence of random variables $X_1,X_2,X_3,....$, it means each $X_n$ is a function from space $S$ to real numbers, that is,\
$$
X_n(s_i) = x_i, \text{ for } i=1,2,...,k
$$

In brief, a sequence of random variables is in fact a sequence of functions $X_n: S \rightarrow \mathbb{R}$.

### Convergence in Distribution 

Convergence in distribution is in some sense the weakest type of convergence. All it says is that the CDF of $X_n$ converges to the CDF of $X$ as $n$ goes to infinity. It does not require any dependence between the $X_n$ and $X$. To say that $X_n$ converges in distribution to $X$, we write:\
$$
X_n \xrightarrow{d} X
$$

The formal definition of convergence in distribution follows:

> A sequence of random variables $X_1,X_2,X_3,....$ converges in
> distribution to a random\
> variable $X$, if\
$$
 \lim_{n \to \infty} F_{X_n}(x) = F_X(x)
$$
> for all $x$ at which $F_X(x)$ is continuous.

The most famous example of convergence in distribution is the central limit theorem (CLT). The CLT states that the normalized average of i.i.d. random variables $X_1,X_2,X_3,....$ converges in distribution to a standard normal random variable.

### Convergence in Probability 

Convergence in probability is stronger than convergence in distribution, and we write\
$$
X_n \xrightarrow{p} X
$$

The formal definition of convergence in probability follows:

> A sequence of random variables $X_1,X_2,X_3,....$ converges in
> probability to a random\
> variable $X$, if\
 $$
 \lim_{n \to \infty} P(|X_n - X| \geq \epsilon) = 0, \text{ for
 all } \epsilon > 0
 $$

The most famous example of convergence in probability is the weak law of large numbers (WLLN). The WLLN states that if $X_1,X_2,X_3,....$ are i.i.d. random variable with mean $E[X_i] = \mu < \infty$, then the average sequence defined by\
$$
\bar{X}_n = \frac{1}{n} \sum_{i=1}^{n} X_i
$$

converges in probability to its mean $\mu$. It is called the "weak"
law because it refers to convergence in probability. There is another version of the law of large numbers that is called the strong law of large numbers (SLLN).

### Convergence in Mean 

One way of interpreting the convergence of a sequence $X_n$ to $X$
is to say the "distance" between $X_n$ to $X$ is getting smaller and smaller. For example, if we define the distance between $X_n$ and
$X$ as $P(|X_n - X| \geq \epsilon)$, we have convergence in probability. The common way to define the distance between $X_n$ and
$X$ is $E(|X_n - X|^r)$, parameter $r$ is a fixed number. This refers to **convergence in mean**. (*Note: for convergence in mean, it usually requires $E(|X_n|^r) < \infty$*). The most common case is $r=2$, in which case it is called the
**mean-square convergence**. (*Note: the case $r=1$ is narrowly referred as convergence in mean.*)

> Let $r \geq 1$ be a fixed number. A sequence of random variables
> $X_1,X_2,X_3,....$\
> converges in the $r$th mean or in the $L^r$ norm to a
> random variable $X$, shown by\
> $X_n \xrightarrow{L^r} X$, if\
 $$
 \lim_{n \to \infty} E(|X_n - X|^r) = 0
 $$
>
> If $r=2$, it is shown as $X_n \xrightarrow{L^2} X$

> **Theorem:** If $X_n \xrightarrow{L^r} X$ for some
> $r \geq 1$, then $X_n \xrightarrow{p} X$.

> **Proof:** For any $\epsilon > 0$ and the $r \geq 1$, we have\
> $$
 \begin{align}
 P(|X_n - X| \geq \epsilon) &= P(|X_n - X|^r \geq \epsilon^r) \\
 &\leq \frac{E(|X_n - X|^r)}{\epsilon^r} \text{ by Markov Inequality}
 \end{align}
 $$
>
> Since by assumption, $
> \lim_{n \to \infty} E(|X_n - X|^r) = 0$, we conclude\
 $$
 \lim_{n \to \infty} P(|X_n - X| \geq \epsilon) = 0, \text{ for
 all } \epsilon > 0
 $$

The converse of above theorem is not true in general, a counter example follows:

> **Example:** Consider a sequence of random variables
> $X_1,X_2,X_3,....$ such that\
 $$
 X_n = \begin{cases}
 n^2 & \text{with probability } \frac{1}{n} \\
 0 & \text{with probability } 1-\frac{1}{n}
 \end{cases}
 $$
> we can show that $X_n \xrightarrow{p} X$, but $X_n$ does not
> converge in the $r$th mean for any $r > 1$.

### Almost Sure Convergence 

Consider a sequence of random variables $X_1,X_2,X_3,....$, if the probability that the sequence $X_n(s)$ converges to $X(s)$ is equal to 1, we say that $X_n$ converges to $X$ almost surely and write\
$$
X_n \xrightarrow{a.s.} X
$$

The formal definition of almost sure convergence follows:

> A sequence of random variables $X_1,X_2,X_3,....$, converge almost
> surely to a random\
> variable $X$ if\
 $$
 P\big(\left\lbrace s \in S: \lim_{n \to \infty}
 X_n(s) = X(s)\right\rbrace\big) = 1.
 $$

 **Example:** Consider the sample space $S=[0,1]$ with a
 probability measure that is uniform on this space, i.e.,\
 $$
 P([a,b]) = b - a, \qquad \text{for } 0 \leq a \leq b \leq 1.
 $$

 Define the sequence $X_n$ as follows:\
 $$
 X_n(s) = \begin{cases}
 1 & \quad 0 \leq s < \frac{1}{n} \\
 & \quad \\
 0 & \quad \text{otherwise}
 \end{cases}
 $$

 Also, define the random variable $X$ on this sample space as
 follows:\
 $$
 X(s) = \begin{cases}
 1 & \quad 0 \leq s < 0 \\
 & \quad \\
 0 & \quad \text{otherwise}
 \end{cases}
 $$

 We can show that $X_n \xrightarrow{a.s.} X$.

In some problems, proving almost sure convergence directly can be difficult. Thus, it is desirable to know some sufficient conditions for almost sure convergence. Here is a result that is sometimes useful when we would like to prove almost sure convergence.

> **Theorem:** Consider a sequence of random variables
> $X_1,X_2,X_3,....$, if for all $> \epsilon > 0$, we have\
 $$
 \sum_{n=1}^{\infty} P\big(|X_n - X| > \epsilon \big) <
 \infty,
 $$
> Then $X_n \xrightarrow{a.s.} X$.