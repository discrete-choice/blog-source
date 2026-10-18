:::::::::::::::::::::::::: {.main role="main"}
::::::::::::::::::::::::: main-inner
::::::::::: content-wrap
:::::::::: {.content .post .posts-expand}
[ ]{hidden="" itemprop="author" itemscope=""
itemtype="http://schema.org/Person"}

[ ]{hidden="" itemprop="publisher" itemscope=""
itemtype="http://schema.org/Organization"}

:::: {.header .post-header}
# Intuitions for Probability Theory {#intuitions-for-probability-theory .post-title itemprop="name headline"}

::: post-meta
[ [ ]{.post-meta-item-icon} [Posted on]{.post-meta-item-text} 2020-08-09
]{.post-meta-item} [ [ ]{.post-meta-item-icon}
[In]{.post-meta-item-text} [
[[Academic]{itemprop="name"}](/categories/Academic/){itemprop="url"
rel="index"} ]{itemprop="about" itemscope=""
itemtype="http://schema.org/Thing"} , [
[[Math]{itemprop="name"}](/categories/Academic/Math/){itemprop="url"
rel="index"} ]{itemprop="about" itemscope=""
itemtype="http://schema.org/Thing"} ]{.post-meta-item} [ [
]{.post-meta-item-icon} [Views: ]{.post-meta-item-text}
[]{#busuanzi_value_page_pv} ]{#busuanzi_container_page_pv
.post-meta-item title="Views" style="display: none;"}
:::
::::

::: {.post-body itemprop="articleBody"}
## [](#Essence-of-Probability-Theory "Essence of Probability Theory"){.headerlink}Essence of Probability Theory {#Essence-of-Probability-Theory}

- How to connect conditional probability with the regression model?\
  Remember conditional expectation of random variable \$Y\$ given that
  \$X=x\$ is\
  \$\$\
  \\begin{equation\*}\
  E\[Y\|X=x\]=\\sum\_{y_i\\in{R_y}}P\_{Y\|X}(y_i\|x)\
  \\end{equation\*}\
  \$\$

That is to say, \$E\[Y\|X=x\]\$ only depends on the value of \$x\$. In
other words, \$E\[Y\|X=x\]\$ is a function of \$x\$. Thus we can think
of \$E\[Y\|X=x\]\$ as a function of the value of random variable \$X\$
as follows:\
\$\$\
\\begin{equation\*}\
g(x)=E\[Y\|X=x\]\\Rightarrow E\[Y\|X\]=g(X)\
\\end{equation\*}\
\$\$\
Where function \$g(X)\$ could be our commonly used regression model.
This is an important concept that we interpret the conditional
expectation as a random variable.

### [](#Law-of-Iterated-Expectations "Law of Iterated Expectations"){.headerlink}Law of Iterated Expectations {#Law-of-Iterated-Expectations}

\$\$\
E\[Y\]=E\[E\[Y\|X\]\]\
\$\$\
Let us look again at the law of total probability for expectation.
Assume \$E\[Y\|X\]=g(X)\$, we have:\
\$\$\
\\begin{align\*}\
E\[Y\]&=\\sum\_{x_i\\in{R_X}}E\[Y\|X=x_i\]P_X(x_i) \\\\\
&=\\sum\_{x_i\\in{R_X}}g(x_i)P_X(x_i) \\\\\
&=E\[g(X)\]=E\[E\[Y\|X\]\]\
\\end{align\*}\
\$\$\
This is also known as **Law of Total Expectation**.

### [](#Law-of-Total-Varianace "Law of Total  Varianace:"){.headerlink}Law of Total Varianace: {#Law-of-Total-Varianace}

\$\$\
Var(Y)=Var(E\[Y\|X\])+E\[Var(Y\|X)\]\
\$\$

Let \$Z=E\[Y\|X\]\$, then,\
\$\$\
Var(Z)=E\[Z\^2\]-(E\[Z\])\^2=E\[Z\^2\]-(E\[Y\])\^2\
\$\$

First, we are going to show the proof and introduce the intuition
afterwards.\
\$\$\
\\begin{align\*}\
& Var(Y\|X)=E\[Y\^2\|X\]-E\^2\[Y\|X\] \\\\\
& \\Rightarrow E\[Var(Y\|X)\]=E\[Y\^2\]-E\[Z\^2\] \\\\\
& \\Rightarrow E\[Var(Y\|X)\]+E\[Z\^2\]=Var(Y)+(E\[Y\])\^2 \\\\\
& \\Rightarrow Var(Y) =E\[Var(Y\|X)\]+Var(E\[Y\|X\])\
\\end{align\*}\
\$\$

To understand the law of total variance intuitively, it is often useful
to look at a population divided into several subgroups. In particular,
suppose that we have this random experiment: We pick a person in the
world at random and look at his/her height. Let us use variable \$Y\$ to
represent the height. Define another random variable \$X\$ whose value
depends on the country of the chosen person, where \$X=1,2,3...n\$.
\$n\$ is the the number of countries in the world. Then, let us look at
the two terms in the law of total variance.\
\$\$\
Var(Y) =E\[Var(Y\|X)\]+Var(E\[Y\|X\])\
\$\$

We can see that \$Var(Y\|X=i)\$ denotes the variance of \$X\$ in country
\$i\$. Thus \$E\[Var(Y\|X)\]\$ is the average of variances across all
countries. On the other hand, \$E\[Y\|X=i\]\$ is average height in
country \$i\$. Then \$Var(E\[Y\|X\])\$ is the variance between
countries. So we can interpret the law of total variance in the
following way. Variance of \$Y\$ can be decomposed into two parts: the
first is the average of variances from each individual country, while
the second is the variance between height averages in each country.

### [](#Convergence-of-Random-Variable "Convergence of Random Variable"){.headerlink}Convergence of Random Variable {#Convergence-of-Random-Variable}

Before discussing convergence for a sequence of random variables, let us
remember what convergence means for a sequence of real numbers.

> A sequence of real number \$x_1, x_2, x_3 ...\$ converges to a limit
> \$x\$ if\
> \$\$\
> \\lim\_{n\\rightarrow\\infty}x_n=x\
> \$\$
>
> That is, for any \$\\epsilon\>0\$, there exists an \$N_o\\in N \$ such
> that
>
> \$\$\
> \|x_n-x\|\<\\epsilon,\\text{ for all } n\>N_o\
> \$\$

#### [](#Sequence-of-Random-Variables "Sequence of Random Variables"){.headerlink}Sequence of Random Variables {#Sequence-of-Random-Variables}

Here, we would like to discuss what we precisely mean by a sequence of
random variables. Recall that, in any probability model, we have a
sample space \$S\$ and a probability measure \$P\$. For simplicity,
suppose that our sample space consists of a finite number of elements,
i.e.,

\$\$\
S={s_1,s_2,...., s_k}\
\$\$

Then, a random variable \$X\$ is a mapping that assigns a real number to
any of any of the possible outcomes \$s_i\$, which we may write as\
\$\$\
X(s_i)=x_i,\\text{ for }i=1,2,...,k\
\$\$

When we have a sequence of random variables \$X_1,X_2,X_3,....\$, it
means each \$X_n\$ is a function from space \$S\$ to real numbers, that
is,\
\$\$\
X_n(s_i)=x\_{ni},\\text{ for }i=1,2,...,k\
\$\$

In brief, a sequence of random variables is in fact a sequence of
functions \$X_n: S\\rightarrow R\$.

### [](#Convergence-in-Distribution "Convergence in Distribution"){.headerlink}Convergence in Distribution {#Convergence-in-Distribution}

Convergence in distribution is in some sense the weakest type of
convergence. All it says is that the CDF of \$X_n\$ converges to the CDF
of \$X\$ as \$n\$ goes to infinity. It does not require any dependence
between the \$X_n\$ and \$X\$. To say that \$X_n\$ converges in
distribution to \$X\$, we write:\
\$\$\
X_n \\xrightarrow{d} X\
\$\$

The formal definition of convergence in distribution follows:

> A sequence of random variables \$X_1,X_2,X_3,....\$ converges in
> distribution to a random\
> variable \$X\$, if\
> \$\$\
> \\lim\_{n\\rightarrow\\infty}F\_{X_n}(x)=F\_{X}(x)\
> \$\$\
> for all at which \$F\_{X}(x)\$ is continuous.

The most famous example of convergence in distribution is the central
limit theorem (CLT). The CLT states that the normalized average of
i.i.d. random variables \$X_1,X_2,X_3,....\$ converges in distribution
to a standard normal random variable.

### [](#Convergence-in-Probability "Convergence in Probability"){.headerlink}Convergence in Probability {#Convergence-in-Probability}

Convergence in probability is stronger than convergence in distribution,
and we write\
\$\$\
X_n \\xrightarrow{P} X\
\$\$

The formal definition of convergence in probability follows:

> A sequence of random variables \$X_1,X_2,X_3,....\$ converges in
> probability to a random\
> variable \$X\$, if\
> \$\$\
> \\lim\_{n\\rightarrow\\infty}P(\|X_n-X\|\\geq\\epsilon)=0,\\text{ for
> all }\\epsilon\>0\
> \$\$

The most famous example of convergence in probability is the weak law of
large numbers (WLLN). The WLLN states that if \$X_1,X_2,X_3,....\$ are
i.i.d. random variable with mean \$E\[X_i\]=\\mu\<\\infty\$, then the
average sequence defined by\
\$\$\
\\bar{X}\_n=\\frac{X_1+X_2+...+X_n}{n}\
\$\$

converges in probability to its mean \$\\mu\$. It is called the "weak"
law because it refers to convergence in probability. There is another
version of the law of large numbers that is called the strong law of
large numbers (SLLN).

### [](#Convergence-in-Mean "Convergence in Mean"){.headerlink}Convergence in Mean {#Convergence-in-Mean}

One way of interpreting the convergence of a sequence \$X_n\$ to \$X\$
is to say the "distance" between \$X_n\$ to \$X\$ is getting smaller and
smaller. For example, if we define the distance between \$X_n\$ and
\$X\$ as \$P(\|X_n-X\|\\geq\\epsilon)\$, we have convergence in
probability. The common way to define the distance between \$X_n\$ and
\$X\$ is \$E(\|X_n-X\|\^{\\tau})\$, parameter \$\\tau\$ is a fixed
number. This refers to **convergence in mean**. (*Note: for convergence
in mean, it usually requires \$E(\|X_n\|\^{\\tau})\<\\infty\$*). The
most common case is \$\\tau=2\$, in which case it is called the
**mean-square convergence**. (*Note: the case \$\\tau=1\$ is narrowly
referred as convergence in mean.*)

> Let \$\\tau\\geq1\$ be a fixed number. A sequence of random variables
> \$X_1,X_2,X_3,....\$\
> converges in the \$\\tau\$th mean or in the \$L\^{\\tau}\$ norm to a
> random variable \$X\$, shown by\
> \$X_n \\xrightarrow{L\^{\\tau}} X\$, if\
> \$\$\
> \\lim\_{n\\rightarrow\\infty}E(\|X_n-X\|\^{\\tau})=0\
> \$\$
>
> If \$\\tau=2\$, it is shown as \$X_n \\xrightarrow{m.s.} X\$

> **Theorem:** If \$X_n \\xrightarrow{L\^{\\tau}} X\$ for some
> \$\\tau\\geq1\$, then \$X_n \\xrightarrow{P} \> X\$.

> **Proof:** For any \$\\epsilon\>0\$ and the \$\\tau\\geq1\$, we have\
> \$\$\
> \\begin{align\*}\
> P(\|X_n-X\|\\geq\\epsilon)&=P(\|X_n-X\|\^{\\tau}\\geq\\epsilon\^{\\tau})
> \\\\\
> &\\leq \\frac{E(\|X_n-X\|\^{\\tau})}{\\epsilon\^{\\tau}}\\text{ by
> Markov Inequality}\
> \\end{align\*}\
> \$\$
>
> Since by assumption, \$
> \\lim\_{n\\rightarrow\\infty}E(\|X_n-X\|\^{\\tau})=0\$, we conclude\
> \$\$\
> \\lim\_{n\\rightarrow\\infty}P(\|X_n-X\|\\geq\\epsilon)=0,\\text{ for
> all }\\epsilon\>0\
> \$\$

The converse of above theorem is not true in general, an counter example
follows:

> **Example:** Consider a sequence of random variables
> \$X_1,X_2,X_3,....\$ such that\
> \$\$\
> X_n=\\left\\lbrace\\begin{array}{ll }\
> n\^2 & \\text{ with probability }\\frac{1}{n} \\\\\
> 0 & \\text{ with probability }1-\\frac{1}{n}\\end{array}\\right.\
> \$\$\
> we can show that \$X_n \\xrightarrow{P} X\$, but \$X_n\$ does not
> converge in the \$\\tau\$th mean \> for any \$\\tau\>1\$.

### [](#Almost-Sure-Convergence "Almost Sure Convergence"){.headerlink}Almost Sure Convergence {#Almost-Sure-Convergence}

Consider a sequence of random variables \$X_1,X_2,X_3,....\$, if the
probability that the sequence \$X_n(s)\$ converges to \$X(s)\$ is equal
to 1, we say that \$X_n\$ converges to \$X\$ almost surely and write\
\$\$\
X_n \\xrightarrow{a.s.} X\
\$\$

The formal definition of almost sure convergence follows:

> A sequence of random variables \$X_1,X_2,X_3,....\$, converge almost
> surely to a random\
> variable \$X\$ if\
> \$\$\
> P\\big(\\left\\lbrace s \\in S: \\lim\_{n\\rightarrow \\infty}
> X_n(s)=X(s)\\right\\rbrace\\big)=1.\
> \$\$

> **Example:** Consider the sample space \$S=\[0,1\]\$ with a
> probability measure that is uniform on this space, i.e.,\
> \$\$\
> P(\[a,b\])=b-a, \\qquad \\textrm{ for all }0 \\leq a \\leq b \\leq 1.\
> \$\$
>
> Define the sequence \${X_n, n=1,2,...}\$ as follows:\
> \$\$\
> X_n(s) = \\left\\lbrace \\begin{array}{l l}\
> 1 & \\quad 0 \\leq s \< {\\large \\frac{n+1}{2n}} \\\\\
> & \\quad \\\\\
> 0 & \\quad \\text{otherwise}\
> \\end{array} \\right.\
> \$\$
>
> Also, define the random variable \$X\$ on this sample space as
> follows:\
> \$\$\
> X(s) = \\left\\lbrace \\begin{array}{l l}\
> 1 & \\quad 0 \\leq s \< \\frac{1}{2} \\\\\
> & \\quad \\\\\
> 0 & \\quad \\text{otherwise}\
> \\end{array} \\right.\
> \$\$
>
> We can show that \$X_n \\xrightarrow{a.s.} X\$.

In some problems, proving almost sure convergence directly can be
difficult. Thus, it is desirable to know some sufficient conditions for
almost sure convergence. Here is a result that is sometimes useful when
we would like to prove almost sure convergence.

> **Theorem:** Consider a sequence of random variables
> \$X_1,X_2,X_3,....\$, if for all \> \$\\epsilon\>0\$, we have\
> \$\$\
> \\sum\_{n=1}\^{\\infty} P\\big(\|X_n-X\| \> \\epsilon \\big) \<
> \\infty,\
> \$\$
>
> Then \$X_n \\xrightarrow{a.s.} X\$.
:::

::: post-tags
[\# Conditional Probability](/tags/Conditional-Probability/){rel="tag"}
[\# Convergence Theorem](/tags/Convergence-Theorem/){rel="tag"}
:::

::::: post-nav
::: post-nav-item
[ I will always stand on the side of the
egg](/2020/08/08/Haruki/ "I will always stand on the side of the egg"){rel="prev"}
:::

::: post-nav-item
[Counting Stars
](/2020/08/15/counting-stars/ "Counting Stars"){rel="next"}
:::
:::::
::::::::::
:::::::::::

::: {.toggle .sidebar-toggle}
[]{.toggle-line .toggle-line-first} []{.toggle-line .toggle-line-middle}
[]{.toggle-line .toggle-line-last}
:::

::::::::::::: {.aside .sidebar}
:::::::::::: sidebar-inner
- Table of Contents
- Overview

:::: {.post-toc-wrap .sidebar-panel}
::: {.post-toc .motion-element}
1.  [[1.]{.nav-number} [Essence of Probability
    Theory]{.nav-text}](#Essence-of-Probability-Theory){.nav-link}
    1.  [[1.1.]{.nav-number} [Law of Iterated
        Expectations]{.nav-text}](#Law-of-Iterated-Expectations){.nav-link}
    2.  [[1.2.]{.nav-number} [Law of Total
        Varianace:]{.nav-text}](#Law-of-Total-Varianace){.nav-link}
    3.  [[1.3.]{.nav-number} [Convergence of Random
        Variable]{.nav-text}](#Convergence-of-Random-Variable){.nav-link}
        1.  [[1.3.1.]{.nav-number} [Sequence of Random
            Variables]{.nav-text}](#Sequence-of-Random-Variables){.nav-link}
    4.  [[1.4.]{.nav-number} [Convergence in
        Distribution]{.nav-text}](#Convergence-in-Distribution){.nav-link}
    5.  [[1.5.]{.nav-number} [Convergence in
        Probability]{.nav-text}](#Convergence-in-Probability){.nav-link}
    6.  [[1.6.]{.nav-number} [Convergence in
        Mean]{.nav-text}](#Convergence-in-Mean){.nav-link}
    7.  [[1.7.]{.nav-number} [Almost Sure
        Convergence]{.nav-text}](#Almost-Sure-Convergence){.nav-link}
:::
::::

::::::::: {.site-overview-wrap .sidebar-panel}
:::: {.site-author .motion-element itemprop="author" itemscope="" itemtype="http://schema.org/Person"}
Discrete Choice

::: {.site-description itemprop="description"}
:::
::::

:::::: {.site-state-wrap .motion-element}
::: {.site-state-item .site-state-posts}
[[8]{.site-state-item-count} [posts]{.site-state-item-name}](/archives/)
:::

::: {.site-state-item .site-state-categories}
[[5]{.site-state-item-count}
[categories]{.site-state-item-name}](/categories/)
:::

::: {.site-state-item .site-state-tags}
[[14]{.site-state-item-count} [tags]{.site-state-item-name}](/tags/)
:::
::::::
:::::::::
::::::::::::
:::::::::::::

::: {#sidebar-dimmer}
:::
:::::::::::::::::::::::::
::::::::::::::::::::::::::
