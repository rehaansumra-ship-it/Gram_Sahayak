<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="gram_sahayak.Pages.Home" %>

<asp:Content ID="HomeHead"
    ContentPlaceHolderID="HeadContent"
    runat="server">

    <link href="../Content/Home.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="HomeContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <!-- HERO SECTION -->
    <section class="home-hero">
        <div class="hero-container">

            <div class="hero-content">

                <span class="hero-badge">
                    ✦ &nbsp; Natural Growth &nbsp; • &nbsp;
                    500+ Schemes Covered
                </span>

                <h1>
                    Find Government<br />
                    Schemes You May Be<br />
                    Eligible For
                </h1>

                <p class="hero-gujarati">
                    હવે સરકારી યોજનાઓનો લાભ મેળવો સરળતાથી
                </p>

                <p class="hero-description">
                    Empowering rural communities. Enter minimal
                    details to find schemes for agriculture,
                    housing, healthcare, and livelihood support
                    in under 3 minutes.
                </p>

                <div class="hero-buttons">
                    <a href="CheckEligibility.aspx"
                       class="btn-primary">
                        Check My Eligibility
                        <span>›</span>
                    </a>

                    <a href="Schemes.aspx"
                       class="btn-outline">
                        View All Schemes
                    </a>
                </div>

            </div>

            <div class="hero-image">
                <img src="../image/gram sahayak home page image.jpeg"
                     alt="Illustration of a rural Indian farm" />
            </div>

        </div>
    </section>


    <!-- FEATURES SECTION -->
    <section class="features-section">

        <div class="section-heading">
            <span class="section-label">BENEFITS</span>
            <h2>Designed For Simplicity</h2>
        </div>

        <div class="features-grid">

            <article class="feature-card">
                <div class="feature-icon">♧</div>

                <h3>Easy Eligibility Check</h3>

                <p>
                    Answer simple questions in English or
                    Gujarati to find out which schemes fit you.
                </p>
            </article>

            <article class="feature-card">
                <div class="feature-icon">▥</div>

                <h3>Compare Schemes</h3>

                <p>
                    View benefits side-by-side to understand
                    which government schemes suit your needs.
                </p>
            </article>

            <article class="feature-card">
                <div class="feature-icon">♙</div>

                <h3>Step-by-Step Guidance</h3>

                <p>
                    Get an easy application roadmap explaining
                    the process, documents required and where
                    to apply.
                </p>
            </article>

        </div>
    </section>


    <!-- POPULAR SCHEMES SECTION -->
    <section class="schemes-section">

        <div class="schemes-heading">

            <div>
                <span class="section-label orange-label">
                    YOUR BENEFITS
                </span>

                <h2>Popular Government Schemes</h2>
            </div>

            <a href="Schemes.aspx" class="view-all-link">
                View All 500+ Schemes →
            </a>

        </div>

        <div class="schemes-grid">

            <!-- SCHEME 1 -->
            <article class="scheme-card">

                <span class="scheme-tag">Agriculture</span>

                <div class="scheme-top">
                    <h3>PM Kisan Samman Nidhi</h3>

                    <span class="scheme-amount">
                        ₹6,000 / year
                    </span>
                </div>

                <p>
                    Financial assistance by the Government
                    of India that provides eligible farmers
                    with direct income support.
                </p>

                <a href="CheckEligibility.aspx"
                   class="scheme-link">
                    Check Eligibility →
                </a>

            </article>


            <!-- SCHEME 2 -->
            <article class="scheme-card">

                <span class="scheme-tag">Healthcare</span>

                <div class="scheme-top">
                    <h3>Ayushman Bharat (PM-JAY)</h3>

                    <span class="scheme-amount">
                        Up to ₹5 lakh / year
                    </span>
                </div>

                <p>
                    National health protection scheme
                    providing eligible families with
                    cashless hospital treatment.
                </p>

                <a href="CheckEligibility.aspx"
                   class="scheme-link">
                    Check Eligibility →
                </a>

            </article>


            <!-- SCHEME 3 -->
            <article class="scheme-card">

                <span class="scheme-tag">Housing</span>

                <div class="scheme-top">
                    <h3>Pradhan Mantri Awas Yojana (Rural)</h3>

                    <span class="scheme-amount">
                        Housing assistance
                    </span>
                </div>

                <p>
                    Assistance for eligible rural households
                    to build a permanent home with basic
                    amenities and improved living conditions.
                </p>

                <a href="CheckEligibility.aspx"
                   class="scheme-link">
                    Check Eligibility →
                </a>

            </article>


            <!-- SCHEME 4 -->
            <article class="scheme-card">

                <span class="scheme-tag">Women Empowerment</span>

                <div class="scheme-top">
                    <h3>Sukanya Samriddhi Yojana</h3>

                    <span class="scheme-amount">
                        Savings scheme
                    </span>
                </div>

                <p>
                    A government-backed savings scheme
                    designed to help families save for
                    an eligible girl child's future.
                </p>

                <a href="CheckEligibility.aspx"
                   class="scheme-link">
                    Check Eligibility →
                </a>

            </article>

        </div>
    </section>


    <!-- HOW IT WORKS SECTION -->
    <section class="how-section">

        <div class="section-heading">
            <span class="section-label">STEP BY STEP</span>
            <h2>How Gram Sahayak Works</h2>
        </div>

        <div class="steps-grid">

            <article class="step-card">

                <div class="step-top">
                    <span class="step-number">01</span>
                    <span class="step-arrow">→</span>
                </div>

                <h3>Fill Basic Details</h3>

                <p>
                    Share your age, income, occupation,
                    family and basic eligibility information.
                </p>

            </article>

            <article class="step-card">

                <div class="step-top">
                    <span class="step-number">02</span>
                    <span class="step-arrow">→</span>
                </div>

                <h3>Get Matched Schemes</h3>

                <p>
                    Our eligibility checker matches your
                    details against the available scheme rules.
                </p>

            </article>

            <article class="step-card">

                <div class="step-top">
                    <span class="step-number">03</span>
                    <span class="step-arrow">→</span>
                </div>

                <h3>Apply with Guidance</h3>

                <p>
                    Discover the next steps, required documents
                    and official application resources.
                </p>

            </article>

        </div>

    </section>

</asp:Content>