<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllSchemes.aspx.cs" Inherits="gram_sahayak.Pages.AllSchemes" %>


<asp:Content ID="AllSchemesHead" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../Content/AllSchemes.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="AllSchemesContent" ContentPlaceHolderID="MainContent" runat="server">

<section class="all-schemes-page">
    <div class="all-schemes-container">

        <h1>All Government Schemes (બધી સરકારી યોજનાઓ)</h1>

        <!-- Search -->
        <div class="scheme-search">
            <span class="search-icon">⌕</span>
            <input type="search" id="schemeSearch"
                placeholder="Search schemes by name, keyword, or benefit amount... (e.g. Kisan, Scholarship, Subsidy)" />
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

                    <label><input type="checkbox" class="category-filter" value="agriculture" checked /> Farmer / Agrarian</label>
                    <label><input type="checkbox" class="category-filter" value="education" /> Students &amp; Education</label>
                    <label><input type="checkbox" class="category-filter" value="women" /> Women &amp; Girls</label>
                    <label><input type="checkbox" class="category-filter" value="senior" /> Senior Citizens</label>
                    <label><input type="checkbox" class="category-filter" value="healthcare" checked /> Healthcare &amp; Insurance</label>
                    <label><input type="checkbox" class="category-filter" value="pension" /> Pension &amp; Welfare</label>
                    <label><input type="checkbox" class="category-filter" value="housing" /> Housing Assistance</label>
                </div>

                <div class="filter-group">
                    <h3>Maximum Family Income</h3>
                    <div class="income-value">Up to ₹<span id="incomeDisplay">250000</span> / year</div>
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

                <div class="scheme-cards" id="schemeCards">

                    <article class="all-scheme-card" data-category="agriculture"
                        data-income="250000" data-state="national"
                        data-search="pm kisan samman nidhi farmer agriculture ₹6000 cash support">
                        <div class="card-meta">
                            <span class="scheme-badge">Agriculture</span>
                            <strong>₹6,000 / year cash support</strong>
                        </div>
                        <h2>PM Kisan Samman Nidhi</h2>
                        <p>Direct financial assistance in three instalments of ₹2,000 to eligible farmer families.</p>
                        <a href="https://pmkisan.gov.in/" target="_blank" rel="noopener noreferrer">View Details +</a>
                    </article>

                    <article class="all-scheme-card" data-category="healthcare"
                        data-income="250000" data-state="national"
                        data-search="ayushman bharat pm jay healthcare health insurance ₹5 lakhs medical coverage">
                        <div class="card-meta">
                            <span class="scheme-badge">Healthcare</span>
                            <strong>Up to ₹5 Lakhs medical coverage</strong>
                        </div>
                        <h2>Ayushman Bharat (PM-JAY)</h2>
                        <p>Provides eligible families with secondary and tertiary hospitalization treatment coverage.</p>
                        <a href="https://nha.gov.in/" target="_blank" rel="noopener noreferrer">View Details +</a>
                    </article>

                    <article class="all-scheme-card" data-category="housing"
                        data-income="300000" data-state="national"
                        data-search="pm awas yojana rural housing home assistance subsidy">
                        <div class="card-meta">
                            <span class="scheme-badge">Housing</span>
                            <strong>Housing subsidy</strong>
                        </div>
                        <h2>PM Awas Yojana (Rural)</h2>
                        <p>Financial support to help eligible rural families construct a permanent home.</p>
                        <a href="https://pmayg.nic.in/" target="_blank" rel="noopener noreferrer">View Details +</a>
                    </article>

                    <article class="all-scheme-card" data-category="women"
                        data-income="300000" data-state="national"
                        data-search="sukanya samriddhi yojana girl child savings financial security compound interest">
                        <div class="card-meta">
                            <span class="scheme-badge">Financial Security</span>
                            <strong>Interest as per current rules</strong>
                        </div>
                        <h2>Sukanya Samriddhi Yojana</h2>
                        <p>A savings scheme for eligible girl children, subject to applicable account rules.</p>
                        <a href="https://www.nsiindia.gov.in/" target="_blank" rel="noopener noreferrer">View Details +</a>
                    </article>

                    <article class="all-scheme-card" data-category="pension"
                        data-income="250000" data-state="national"
                        data-search="pradhan mantri shram yogi maandhan pension monthly pension worker">
                        <div class="card-meta">
                            <span class="scheme-badge">Pension</span>
                            <strong>Monthly pension</strong>
                        </div>
                        <h2>Pradhan Mantri Shram Yogi Maandhan</h2>
                        <p>Voluntary contributory pension scheme for eligible workers in the unorganised sector.</p>
                        <a href="https://maandhan.in/" target="_blank" rel="noopener noreferrer">View Details +</a>
                    </article>

                    <article class="all-scheme-card" data-category="education"
                        data-income="250000" data-state="gujarat"
                        data-search="post matric scholarship students education tuition fees financial aid">
                        <div class="card-meta">
                            <span class="scheme-badge">Education</span>
                            <strong>Tuition assistance</strong>
                        </div>
                        <h2>Post Matric Scholarship</h2>
                        <p>Financial assistance for eligible students to support their continued education.</p>
                        <a href="https://www.myscheme.gov.in/" target="_blank" rel="noopener noreferrer">View Details +</a>
                    </article>

                </div>

                <div id="noSchemesFound" class="no-schemes" hidden>
                    <h3>No matching schemes found</h3>
                    <p>Try changing your search, income limit, state or category filters.</p>
                </div>

                <!-- Pagination -->
                <nav class="scheme-pagination" aria-label="Scheme pagination">
                    <button type="button" id="previousPage" disabled>Previous</button>
                    <button type="button" class="page-number active" data-page="1">1</button>
                    <button type="button" class="page-number" data-page="2">2</button>
                    <button type="button" class="page-number" data-page="3">3</button>
                    <button type="button" class="page-number" data-page="4">4</button>
                    <button type="button" id="nextPage">Next</button>
                </nav>

            </div>
        </div>

    </div>
</section>

<script>
(function () {
    const searchInput = document.getElementById("schemeSearch");
    const searchButton = document.getElementById("searchButton");
    const categoryInputs = document.querySelectorAll(".category-filter");
    const incomeRange = document.getElementById("incomeRange");
    const incomeDisplay = document.getElementById("incomeDisplay");
    const stateSelect = document.getElementById("statePreference");
    const clearButton = document.getElementById("clearFilters");
    const cards = Array.from(document.querySelectorAll(".all-scheme-card"));
    const noResults = document.getElementById("noSchemesFound");
    const previousButton = document.getElementById("previousPage");
    const nextButton = document.getElementById("nextPage");
    const pageButtons = document.querySelectorAll(".page-number");

    let currentPage = 1;
    const pageSize = 6;

    function getFilteredCards() {
        const query = searchInput.value.trim().toLowerCase();
        const selectedCategories = Array.from(categoryInputs)
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

            const searchMatch = !query || searchableText.includes(query);

            return categoryMatch && incomeMatch && stateMatch && searchMatch;
        });
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

        previousButton.disabled = currentPage === 1;
        nextButton.disabled = currentPage >= totalPages;

        pageButtons.forEach(button => {
            const page = Number(button.dataset.page);
            button.hidden = page > totalPages;
            button.classList.toggle("active", page === currentPage);
        });
    }

    searchButton.addEventListener("click", function () {
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
        incomeDisplay.textContent = Number(incomeRange.value).toLocaleString("en-IN");
        currentPage = 1;
        renderSchemes();
    });

    stateSelect.addEventListener("change", function () {
        currentPage = 1;
        renderSchemes();
    });

    clearButton.addEventListener("click", function () {
        categoryInputs.forEach(input => input.checked = false);
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

    pageButtons.forEach(button => {
        button.addEventListener("click", function () {
            currentPage = Number(button.dataset.page);
            renderSchemes();
        });
    });

    renderSchemes();
})();
</script>

</asp:Content>

