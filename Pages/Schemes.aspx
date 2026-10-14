<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Schemes.aspx.cs" Inherits="gram_sahayak.Pages.Schemes" %>
<asp:Content ID="SchemesHead" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../Content/Schemes.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="SchemesContent" ContentPlaceHolderID="MainContent" runat="server">

<section class="schemes-page">
    <div class="schemes-container">

        <div class="schemes-heading">
            <span class="heading-label">GRAM SAHAYAK</span>
            <h1>All Government Schemes</h1>
            <p>બધી સરકારી યોજનાઓ — Find government benefits for you and your family.</p>
        </div>

        <div class="scheme-search">
            <span class="search-icon">⌕</span>
            <input type="search" id="schemeSearch"
                placeholder="Search schemes by name, keyword or benefit..." />
            <button type="button" id="searchButton">Search</button>
        </div>

        <div class="all-schemes-layout">

            <!-- LEFT FILTER SIDEBAR -->
            <aside class="scheme-filters">

                <div class="filter-heading">
                    <h2>Filters</h2>
                    <button type="button" id="clearFilters">Clear All</button>
                </div>

                <div class="filter-group">
                    <h3>Target Category</h3>

                    <label><input type="checkbox" class="category-filter" value="agriculture" checked /> Farmers &amp; Agriculture</label>
                    <label><input type="checkbox" class="category-filter" value="education" /> Students &amp; Education</label>
                    <label><input type="checkbox" class="category-filter" value="women" /> Women &amp; Girls</label>
                    <label><input type="checkbox" class="category-filter" value="senior" /> Senior Citizens</label>
                    <label><input type="checkbox" class="category-filter" value="healthcare" checked /> Healthcare &amp; Insurance</label>
                    <label><input type="checkbox" class="category-filter" value="pension" /> Pension &amp; Welfare</label>
                    <label><input type="checkbox" class="category-filter" value="housing" /> Housing Assistance</label>
                </div>

                <div class="filter-group">
                    <h3>Maximum Family Income</h3>
                    <div class="income-value">Up to ₹<span id="incomeDisplay">2,50,000</span> / year</div>

                    <input type="range" id="incomeRange" min="50000" max="1000000"
                        step="50000" value="250000" />

                    <div class="range-labels">
                        <span>₹50,000</span>
                        <span>₹10,00,000</span>
                    </div>
                </div>

                <div class="filter-group state-filter">
                    <h3>State Preference</h3>
                    <select id="statePreference">
                        <option value="all">All States</option>
                        <option value="gujarat" selected>Gujarat (ગુજરાત)</option>
                        <option value="national">Central Government</option>
                    </select>
                </div>

            </aside>

            <!-- SCHEME RESULTS -->
            <div class="scheme-results-area">

                <div class="results-heading">
                    <h2>Available Schemes</h2>
                    <span id="resultsCount">0 schemes found</span>
                </div>

                <div class="scheme-cards" id="schemeCards">

                    <article class="all-scheme-card" data-category="agriculture"
                        data-income="250000" data-state="national"
                        data-search="pm kisan samman nidhi farmer agriculture 6000 cash support">

                        <div class="card-meta">
                            <span class="scheme-badge">Agriculture</span>
                            <strong>₹6,000 / year</strong>
                        </div>

                        <h2>PM Kisan Samman Nidhi</h2>
                        <p>Direct financial assistance in three instalments to eligible farmer families, subject to scheme rules.</p>
                        <a href="https://pmkisan.gov.in/" target="_blank" rel="noopener noreferrer">Official Website ↗</a>
                    </article>

                    <article class="all-scheme-card" data-category="healthcare"
                        data-income="250000" data-state="national"
                        data-search="ayushman bharat pm jay healthcare health insurance 5 lakhs medical coverage">

                        <div class="card-meta">
                            <span class="scheme-badge">Healthcare</span>
                            <strong>Up to ₹5 lakh</strong>
                        </div>

                        <h2>Ayushman Bharat (PM-JAY)</h2>
                        <p>Hospitalisation coverage for eligible families according to the scheme's eligibility rules.</p>
                        <a href="https://pmjay.gov.in/" target="_blank" rel="noopener noreferrer">Official Website ↗</a>
                    </article>

                    <article class="all-scheme-card" data-category="housing"
                        data-income="300000" data-state="national"
                        data-search="pm awas yojana rural housing home assistance subsidy">

                        <div class="card-meta">
                            <span class="scheme-badge">Housing</span>
                            <strong>Housing assistance</strong>
                        </div>

                        <h2>PM Awas Yojana (Rural)</h2>
                        <p>Financial support for eligible rural families to construct a permanent home under applicable rules.</p>
                        <a href="https://pmayg.nic.in/" target="_blank" rel="noopener noreferrer">Official Website ↗</a>
                    </article>

                    <article class="all-scheme-card" data-category="women"
                        data-income="300000" data-state="national"
                        data-search="sukanya samriddhi yojana girl child savings financial security interest">

                        <div class="card-meta">
                            <span class="scheme-badge">Women &amp; Girls</span>
                            <strong>Long-term savings</strong>
                        </div>

                        <h2>Sukanya Samriddhi Yojana</h2>
                        <p>A savings scheme for eligible girl children, subject to applicable account and deposit rules.</p>
                        <a href="https://www.nsiindia.gov.in/" target="_blank" rel="noopener noreferrer">Official Website ↗</a>
                    </article>

                    <article class="all-scheme-card" data-category="pension"
                        data-income="250000" data-state="national"
                        data-search="pradhan mantri shram yogi maandhan pension monthly pension worker">

                        <div class="card-meta">
                            <span class="scheme-badge">Pension</span>
                            <strong>Monthly pension</strong>
                        </div>

                        <h2>PM Shram Yogi Maandhan</h2>
                        <p>A voluntary contributory pension scheme for eligible workers in the unorganised sector.</p>
                        <a href="https://maandhan.in/" target="_blank" rel="noopener noreferrer">Official Website ↗</a>
                    </article>

                    <article class="all-scheme-card" data-category="education"
                        data-income="250000" data-state="gujarat"
                        data-search="post matric scholarship students education tuition fees financial assistance">

                        <div class="card-meta">
                            <span class="scheme-badge">Education</span>
                            <strong>Education assistance</strong>
                        </div>

                        <h2>Post Matric Scholarship</h2>
                        <p>Scholarship assistance for eligible students according to the relevant programme criteria.</p>
                        <a href="https://scholarships.gov.in/" target="_blank" rel="noopener noreferrer">Official Website ↗</a>
                    </article>

                    <article class="all-scheme-card" data-category="senior"
                        data-income="250000" data-state="national"
                        data-search="senior citizens old age pension national social assistance programme">

                        <div class="card-meta">
                            <span class="scheme-badge">Senior Citizens</span>
                            <strong>Pension support</strong>
                        </div>

                        <h2>National Social Assistance Programme</h2>
                        <p>Social assistance for eligible older people and other groups covered by programme rules.</p>
                        <a href="https://nsap.nic.in/" target="_blank" rel="noopener noreferrer">Official Website ↗</a>
                    </article>

                    <article class="all-scheme-card" data-category="agriculture"
                        data-income="500000" data-state="national"
                        data-search="pradhan mantri fasal bima yojana crop insurance agriculture farmers">

                        <div class="card-meta">
                            <span class="scheme-badge">Agriculture</span>
                            <strong>Crop insurance</strong>
                        </div>

                        <h2>Pradhan Mantri Fasal Bima Yojana</h2>
                        <p>Crop insurance for eligible farmers based on notified crops, areas and enrolment conditions.</p>
                        <a href="https://pmfby.gov.in/" target="_blank" rel="noopener noreferrer">Official Website ↗</a>
                    </article>

                    <article class="all-scheme-card" data-category="women"
                        data-income="300000" data-state="national"
                        data-search="pradhan mantri ujjwala yojana women lpg gas connection">

                        <div class="card-meta">
                            <span class="scheme-badge">Women</span>
                            <strong>LPG connection support</strong>
                        </div>

                        <h2>Pradhan Mantri Ujjwala Yojana</h2>
                        <p>Support for eligible women from poor households to obtain LPG connections under scheme rules.</p>
                        <a href="https://www.pmuy.gov.in/" target="_blank" rel="noopener noreferrer">Official Website ↗</a>
                    </article>

                </div>

                <div id="noSchemesFound" class="no-schemes" hidden>
                    <h3>No matching schemes found</h3>
                    <p>Try changing your search, income limit, state or category filters.</p>
                </div>

                <nav class="scheme-pagination" aria-label="Scheme pagination">
                    <button type="button" id="previousPage" disabled>Previous</button>
                    <div id="pageNumbers"></div>
                    <button type="button" id="nextPage">Next</button>
                </nav>

            </div>
        </div>

        <div class="schemes-note">
            <strong>Important:</strong> Scheme details, income limits and benefits can change. Check the official government website to confirm your eligibility.
        </div>

    </div>
</section>

<script>
(function () {
    const searchInput = document.getElementById("schemeSearch");
    const searchButton = document.getElementById("searchButton");
    const categoryInputs = Array.from(document.querySelectorAll(".category-filter"));
    const incomeRange = document.getElementById("incomeRange");
    const incomeDisplay = document.getElementById("incomeDisplay");
    const stateSelect = document.getElementById("statePreference");
    const clearButton = document.getElementById("clearFilters");
    const cards = Array.from(document.querySelectorAll(".all-scheme-card"));
    const noResults = document.getElementById("noSchemesFound");
    const previousButton = document.getElementById("previousPage");
    const nextButton = document.getElementById("nextPage");
    const pageNumbers = document.getElementById("pageNumbers");
    const resultsCount = document.getElementById("resultsCount");

    let currentPage = 1;
    const pageSize = 6;

    function getFilteredCards() {
        const query = searchInput.value.trim().toLowerCase();

        const selectedCategories = categoryInputs
            .filter(input => input.checked)
            .map(input => input.value);

        const maxIncome = Number(incomeRange.value);
        const selectedState = stateSelect.value;

        return cards.filter(card => {
            const categoryMatch =
                selectedCategories.includes(card.dataset.category);

            const incomeMatch =
                Number(card.dataset.income) <= maxIncome;

            const cardState = card.dataset.state;
            const stateMatch =
                selectedState === "all" ||
                cardState === "national" ||
                cardState === selectedState;

            const searchableText =
                (card.innerText + " " + card.dataset.search).toLowerCase();

            const searchMatch =
                !query || searchableText.includes(query);

            return categoryMatch && incomeMatch && stateMatch && searchMatch;
        });
    }

    function renderPageNumbers(totalPages) {
        pageNumbers.innerHTML = "";

        for (let page = 1; page <= totalPages; page++) {
            const button = document.createElement("button");
            button.type = "button";
            button.textContent = page;
            button.className = "page-number" +
                (page === currentPage ? " active" : "");

            button.addEventListener("click", function () {
                currentPage = page;
                renderSchemes();
            });

            pageNumbers.appendChild(button);
        }
    }

    function renderSchemes() {
        const filteredCards = getFilteredCards();
        const totalPages = Math.max(1, Math.ceil(filteredCards.length / pageSize));

        if (currentPage > totalPages) {
            currentPage = totalPages;
        }

        cards.forEach(card => {
            card.hidden = true;
        });

        const start = (currentPage - 1) * pageSize;
        filteredCards.slice(start, start + pageSize).forEach(card => {
            card.hidden = false;
        });

        noResults.hidden = filteredCards.length !== 0;

        resultsCount.textContent =
            filteredCards.length + (filteredCards.length === 1
                ? " scheme found"
                : " schemes found");

        previousButton.disabled = currentPage === 1;
        nextButton.disabled = currentPage >= totalPages;

        renderPageNumbers(totalPages);
    }

    searchButton.addEventListener("click", function () {
        currentPage = 1;
        renderSchemes();
    });

    searchInput.addEventListener("input", function () {
        currentPage = 1;
        renderSchemes();
    });

    searchInput.addEventListener("keydown", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            currentPage = 1;
            renderSchemes();
        }
    });

    categoryInputs.forEach(input => {
        input.addEventListener("change", function () {
            currentPage = 1;
            renderSchemes();
        });
    });

    incomeRange.addEventListener("input", function () {
        incomeDisplay.textContent =
            Number(incomeRange.value).toLocaleString("en-IN");

        currentPage = 1;
        renderSchemes();
    });

    stateSelect.addEventListener("change", function () {
        currentPage = 1;
        renderSchemes();
    });

    clearButton.addEventListener("click", function () {
        categoryInputs.forEach(input => {
            input.checked = false;
        });

        incomeRange.value = 1000000;
        incomeDisplay.textContent = "10,00,000";
        stateSelect.value = "all";
        searchInput.value = "";
        currentPage = 1;

        renderSchemes();
    });

    previousButton.addEventListener("click", function () {
        if (currentPage > 1) {
            currentPage--;
            renderSchemes();
        }
    });

    nextButton.addEventListener("click", function () {
        const totalPages = Math.ceil(getFilteredCards().length / pageSize);

        if (currentPage < totalPages) {
            currentPage++;
            renderSchemes();
        }
    });

    renderSchemes();
})();
</script>

</asp:Content>

