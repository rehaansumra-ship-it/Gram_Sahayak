<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Schemes.aspx.cs" Inherits="gram_sahayak.Pages.WebForm1" %>



<asp:Content ID="ResultsHead"
    ContentPlaceHolderID="HeadContent"
    runat="server">
    <link href="../Content/Schemes.css"
          rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="ResultsContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

<section class="results-page">
    <div class="results-container">

        <div class="results-heading">
            <div>
                <span class="results-eyebrow">EVALUATION COMPLETE</span>
                <div class="results-title-row">
                    <h1>Your Eligible Schemes</h1>
                    <span class="schemes-found">12 Schemes Found</span>
                </div>
            </div>

            <button type="button" class="download-report"
                    onclick="window.print()">
                ↧ Download Report (PDF)
            </button>
        </div>

        <div class="results-layout">

            <!-- LEFT SIDEBAR -->
            <aside class="results-sidebar">

                <div class="match-panel">
                    <h2>Match Rating</h2>
                    <div class="match-circle">
                        <strong>78%</strong>
                        <span>Matched</span>
                    </div>
                    <p>
                        Based on your age, agricultural occupation
                        and BPL card, your profile matches 12
                        active schemes.
                    </p>
                </div>

                <div class="category-panel">
                    <h2>Filter By Category</h2>

                    <button class="result-filter active"
                            data-filter="agriculture">
                        <span>Agriculture (ખેતી)</span>
                        <span class="filter-count">3</span>
                    </button>

                    <button class="result-filter"
                            data-filter="financial">
                        <span>Financial Aid (નાણાકીય)</span>
                        <span class="filter-count">2</span>
                    </button>

                    <button class="result-filter"
                            data-filter="healthcare">
                        <span>Healthcare (આરોગ્ય)</span>
                        <span class="filter-count">3</span>
                    </button>

                    <button class="result-filter"
                            data-filter="housing">
                        <span>Housing (આવાસ)</span>
                        <span class="filter-count">2</span>
                    </button>

                    <button class="result-filter"
                            data-filter="all">
                        <span>All Categories</span>
                        <span class="filter-count">12</span>
                    </button>
                </div>

            </aside>

            <!-- RIGHT RESULTS LIST -->
            <div class="results-list">

                <article class="result-scheme-card"
                         data-category="agriculture">

                    <div class="scheme-meta">
                        <div>
                            <span class="scheme-tag">Agriculture</span>
                            <span class="match-percent">85% Match Rating</span>
                        </div>
                        <span class="eligibility-badge">Highly Eligible</span>
                    </div>

                    <h2>PM Kisan Samman Nidhi</h2>

                    <div class="scheme-key-benefit">
                        Key Benefit:
                        <strong>₹6,000 / year direct bank transfer</strong>
                    </div>

                    <p class="matched-criteria">
                        Matched criteria: You own agricultural land,
                        classified as OBC, and annual income is under
                        the selected threshold.
                    </p>

                    <div class="scheme-card-actions">
                        <button type="button" class="roadmap-toggle">
                            Guidance Roadmap Available <span>＋</span>
                        </button>

                        <a href="https://pmkisan.gov.in/"
                           target="_blank" rel="noopener noreferrer"
                           class="application-button">
                            Visit Official Website
                        </a>
                    </div>

                    <div class="roadmap-content">
                        <ol>
                            <li>Review the official PM-Kisan eligibility requirements.</li>
                            <li>Prepare land records and required identity documents.</li>
                            <li>Use the official portal to check registration and application status.</li>
                        </ol>
                    </div>
                </article>

                <article class="result-scheme-card"
                         data-category="healthcare">

                    <div class="scheme-meta">
                        <div>
                            <span class="scheme-tag healthcare-tag">Healthcare</span>
                            <span class="match-percent">65% Match Rating</span>
                        </div>
                        <span class="eligibility-badge">Potential Match</span>
                    </div>

                    <h2>Ayushman Bharat PM-JAY</h2>

                    <div class="scheme-key-benefit">
                        Key Benefit:
                        <strong>Eligible hospital treatment coverage</strong>
                    </div>

                    <p class="matched-criteria">
                        Your household information may be relevant.
                        Actual eligibility depends on the applicable
                        beneficiary database and scheme rules.
                    </p>

                    <div class="scheme-card-actions">
                        <button type="button" class="roadmap-toggle">
                            Guidance Roadmap Available <span>＋</span>
                        </button>

                        <a href="https://nha.gov.in/"
                           target="_blank" rel="noopener noreferrer"
                           class="application-button">
                            Visit Official Website
                        </a>
                    </div>

                    <div class="roadmap-content">
                        <ol>
                            <li>Check whether your household is covered under PM-JAY.</li>
                            <li>Verify beneficiary details through an official channel.</li>
                            <li>Contact an empanelled hospital or official helpdesk for assistance.</li>
                        </ol>
                    </div>
                </article>

                <article class="result-scheme-card"
                         data-category="housing">

                    <div class="scheme-meta">
                        <div>
                            <span class="scheme-tag housing-tag">Housing</span>
                            <span class="match-percent">78% Match Rating</span>
                        </div>
                        <span class="eligibility-badge">Potential Match</span>
                    </div>

                    <h2>Pradhan Mantri Awas Yojana (Rural)</h2>

                    <div class="scheme-key-benefit">
                        Key Benefit:
                        <strong>Housing assistance for eligible households</strong>
                    </div>

                    <p class="matched-criteria">
                        Your rural residence and household circumstances
                        may be relevant. Selection is subject to official
                        records and applicable criteria.
                    </p>

                    <div class="scheme-card-actions">
                        <button type="button" class="roadmap-toggle">
                            Guidance Roadmap Available <span>＋</span>
                        </button>

                        <a href="https://pmayg.nic.in/"
                           target="_blank" rel="noopener noreferrer"
                           class="application-button">
                            Visit Official Website
                        </a>
                    </div>

                    <div class="roadmap-content">
                        <ol>
                            <li>Review the current rural housing scheme criteria.</li>
                            <li>Check your household listing with the relevant local authority.</li>
                            <li>Follow the official process for verification and application.</li>
                        </ol>
                    </div>
                </article>

                <article class="result-scheme-card"
                         data-category="agriculture">

                    <div class="scheme-meta">
                        <div>
                            <span class="scheme-tag">Agriculture</span>
                            <span class="match-percent">70% Match Rating</span>
                        </div>
                        <span class="eligibility-badge">Potential Match</span>
                    </div>

                    <h2>Kisan Credit Card</h2>

                    <div class="scheme-key-benefit">
                        Key Benefit:
                        <strong>Credit for eligible agricultural activities</strong>
                    </div>

                    <p class="matched-criteria">
                        Your agricultural occupation may be relevant.
                        Credit limits, lending conditions and eligibility
                        are determined by the applicable rules and lender.
                    </p>

                    <div class="scheme-card-actions">
                        <button type="button" class="roadmap-toggle">
                            Guidance Roadmap Available <span>＋</span>
                        </button>

                        <a href="https://www.myscheme.gov.in/"
                           target="_blank" rel="noopener noreferrer"
                           class="application-button">
                            Explore Scheme
                        </a>
                    </div>

                    <div class="roadmap-content">
                        <ol>
                            <li>Review the applicable Kisan Credit Card requirements.</li>
                            <li>Contact a participating bank or financial institution.</li>
                            <li>Ask about required documents, credit limits and application steps.</li>
                        </ol>
                    </div>
                </article>

                <div id="noResults" class="no-results" hidden>
                    No schemes found in this category.
                    Select another filter to continue.
                </div>

            </div>
        </div>
    </div>
</section>

<script>
(function () {
    var filters = document.querySelectorAll(".result-filter");
    var cards = document.querySelectorAll(".result-scheme-card");
    var noResults = document.getElementById("noResults");

    filters.forEach(function (filter) {
        filter.addEventListener("click", function () {
            filters.forEach(function (button) {
                button.classList.remove("active");
            });

            filter.classList.add("active");

            var category = filter.getAttribute("data-filter");
            var visibleCount = 0;

            cards.forEach(function (card) {
                var matches =
                    category === "all" ||
                    card.getAttribute("data-category") === category;

                card.hidden = !matches;

                if (matches) {
                    visibleCount++;
                }
            });

            noResults.hidden = visibleCount > 0;
        });
    });

    document.querySelectorAll(".roadmap-toggle").forEach(function (button) {
        button.addEventListener("click", function () {
            var card = button.closest(".result-scheme-card");
            var roadmap = card.querySelector(".roadmap-content");
            var isOpen = roadmap.classList.toggle("open");

            button.querySelector("span").textContent = isOpen ? "−" : "＋";
            button.setAttribute("aria-expanded", String(isOpen));
        });

        button.setAttribute("aria-expanded", "false");
    });
})();
</script>

</asp:Content>
