<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="gram_sahayak.Pages.FAQ" %>


<asp:Content ID="FAQHead" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../Content/FAQ.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="FAQContent" ContentPlaceHolderID="MainContent" runat="server">

<section class="faq-page">
    <div class="faq-hero">
        <div class="faq-hero-inner">
            <span class="faq-badge">HELP PORTAL</span>
            <h1>Frequently Asked Questions</h1>
            <h2>વારંવાર પૂછાતા પ્રશ્નો અને તેના જવાબો</h2>
            <p>Find clear answers regarding schemes, necessary local documents, and the processing times for application checks.</p>

            <div class="faq-search">
                <span class="search-icon">&#9906;</span>
                <input type="search" id="faqSearch"
                       placeholder="Search questions or categories (e.g. eligibility)..."
                       aria-label="Search frequently asked questions" />
                <button type="button" id="faqSearchButton">Search</button>
            </div>
            <p class="faq-search-status" id="faqSearchStatus" aria-live="polite"></p>
        </div>
    </div>

    <div class="faq-main">
        <aside class="faq-sidebar" aria-label="FAQ categories">
            <button type="button" class="faq-category active" data-category="all">
                <span>All Questions</span><span class="category-count" data-count="all">10</span>
            </button>
            <button type="button" class="faq-category" data-category="eligibility">
                <span>Eligibility (પાત્રતા)</span><span class="category-count" data-count="eligibility">2</span>
            </button>
            <button type="button" class="faq-category" data-category="documents">
                <span>Documents (દસ્તાવેજો)</span><span class="category-count" data-count="documents">2</span>
            </button>
            <button type="button" class="faq-category" data-category="application">
                <span>Application Process</span><span class="category-count" data-count="application">2</span>
            </button>
            <button type="button" class="faq-category" data-category="schemes">
                <span>Scheme Details</span><span class="category-count" data-count="schemes">2</span>
            </button>
        </aside>

        <div class="faq-content" id="faqContent">

            <article class="faq-item" data-category="eligibility">
                <button type="button" class="faq-question" aria-expanded="false">
                    <span>How does the eligibility checker work? (પાત્રતા તપાસનાર કેવી રીતે કામ કરે છે?)</span>
                    <span class="faq-chevron">&#8964;</span>
                </button>
                <div class="faq-answer" hidden>
                    <p>Our smart engine matches your demographic attributes such as age, state, occupation, income, and BPL card status against the eligibility rules available for government schemes.</p>
                    <p>To get started, open <a href="Checkeligibility.aspx">Check Eligibility</a>, fill in your details, and submit the form. The results show potentially matching schemes and the reasons for the match. Final eligibility must be confirmed by the relevant government authority.</p>
                </div>
            </article>

            <article class="faq-item" data-category="eligibility">
                <button type="button" class="faq-question" aria-expanded="false">
                    <span>Is my personal information safe? (શું મારી વ્યક્તિગત માહિતી સુરક્ષિત છે?)</span>
                    <span class="faq-chevron">&#8964;</span>
                </button>
                <div class="faq-answer" hidden>
                    <p>Enter only the information requested by the form. The website should use appropriate security measures to protect information that it collects.</p>
                    <p>Do not share your passwords, bank PINs, or OTPs. Never assume that information is anonymous or securely stored unless the website's actual privacy policy and implementation confirm it.</p>
                </div>
            </article>

            <article class="faq-item" data-category="documents">
                <button type="button" class="faq-question" aria-expanded="false">
                    <span>What documents do I need to apply for schemes? (યોજનાઓ માટે કયા દસ્તાવેજો જોઈએ?)</span>
                    <span class="faq-chevron">&#8964;</span>
                </button>
                <div class="faq-answer" hidden>
                    <p>Required documents depend on the scheme. Common examples include:</p>
                    <ul>
                        <li>Aadhaar card or another accepted identity document.</li>
                        <li>Proof of residence and family income certificate, if required.</li>
                        <li>Bank account details or passbook.</li>
                        <li>Land records for applicable farmer schemes.</li>
                        <li>Caste, disability, student, or other certificates when applicable.</li>
                    </ul>
                    <p>Check the official scheme instructions before submitting documents. Not every scheme requires all these documents.</p>
                </div>
            </article>

            <article class="faq-item" data-category="documents">
                <button type="button" class="faq-question" aria-expanded="false">
                    <span>Can I check eligibility for multiple schemes at once? (શું હું એકસાથે ઘણી યોજનાઓ તપાસી શકું?)</span>
                    <span class="faq-chevron">&#8964;</span>
                </button>
                <div class="faq-answer" hidden>
                    <p>Yes. Complete the eligibility questionnaire and submit your details. The results page can display multiple schemes whose configured rules match your answers.</p>
                    <p>Open <a href="Schemes.aspx">Eligible Schemes</a> to review the results, or use <a href="AllSchemes.aspx">All Schemes</a> to explore the available scheme catalogue, if that page is part of your project.</p>
                </div>
            </article>

            <article class="faq-item" data-category="application">
                <button type="button" class="faq-question" aria-expanded="false">
                    <span>How accurate are the eligibility results? (પરિણામો કેટલા સચોટ છે?)</span>
                    <span class="faq-chevron">&#8964;</span>
                </button>
                <div class="faq-answer" hidden>
                    <p>Results depend on the accuracy of your answers and the eligibility rules configured in the website. Rules can change when government guidelines are updated.</p>
                    <p>Use the results as guidance, not as a guarantee of approval. The relevant department or authorised officer makes the final eligibility decision.</p>
                </div>
            </article>

            <article class="faq-item" data-category="application">
                <button type="button" class="faq-question" aria-expanded="false">
                    <span>What is a BPL card and how do I get one? (BPL કાર્ડ શું છે અને તે કેવી રીતે મેળવવું?)</span>
                    <span class="faq-chevron">&#8964;</span>
                </button>
                <div class="faq-answer" hidden>
                    <p>BPL means Below Poverty Line. Eligibility and the documents used to establish household status depend on the applicable government programme.</p>
                    <p>For guidance, contact your local Gram Panchayat, Taluka office, or the relevant state department. A BPL card is not required for every government scheme.</p>
                </div>
            </article>

            <article class="faq-item" data-category="schemes">
                <button type="button" class="faq-question" aria-expanded="false">
                    <span>How do I apply for a scheme after checking eligibility? (પાત્રતા તપાસ્યા પછી અરજી કેવી રીતે કરવી?)</span>
                    <span class="faq-chevron">&#8964;</span>
                </button>
                <div class="faq-answer" hidden>
                    <p>Open the scheme details page, review the benefits and eligibility conditions, and prepare the required documents.</p>
                    <ol>
                        <li>Choose the scheme that interests you.</li>
                        <li>Read the application instructions.</li>
                        <li>Open the official government website or visit an authorised service centre.</li>
                        <li>Submit your application and keep the acknowledgement or reference number.</li>
                    </ol>
                    <p>Use the official portal for the particular scheme because application methods differ.</p>
                </div>
            </article>

            <article class="faq-item" data-category="schemes">
                <button type="button" class="faq-question" aria-expanded="false">
                    <span>Are these schemes available in all states? (શું આ યોજનાઓ બધા રાજ્યોમાં ઉપલબ્ધ છે?)</span>
                    <span class="faq-chevron">&#8964;</span>
                </button>
                <div class="faq-answer" hidden>
                    <p>Some schemes operate nationally, while others are state-specific or have different implementation rules in different locations.</p>
                    <p>Choose your state when checking eligibility and confirm availability, application deadlines, and local requirements with the official scheme authority.</p>
                </div>
            </article>

            <article class="faq-item" data-category="eligibility">
                <button type="button" class="faq-question" aria-expanded="false">
                    <span>Can I apply if my income or family details change? (આવક અથવા પરિવારની વિગતો બદલાય તો અરજી કરી શકું?)</span>
                    <span class="faq-chevron">&#8964;</span>
                </button>
                <div class="faq-answer" hidden>
                    <p>Yes, you can check your eligibility again using your updated information. Whether you qualify will depend on the scheme's current rules and the documents you can provide.</p>
                    <p>Always submit accurate information and notify the relevant department if an existing application requires an update.</p>
                </div>
            </article>

            <article class="faq-item" data-category="application">
                <button type="button" class="faq-question" aria-expanded="false">
                    <span>Where can I get help if my application is delayed or rejected? (અરજીમાં વિલંબ થાય તો મદદ ક્યાંથી મળશે?)</span>
                    <span class="faq-chevron">&#8964;</span>
                </button>
                <div class="faq-answer" hidden>
                    <p>Keep your application reference number and check the status on the official portal. If more information is needed, contact the department handling the scheme or visit your local Gram Panchayat or authorised service centre.</p>
                    <p>If an application is rejected, ask for the reason and whether correction, an appeal, or a fresh application is permitted under the scheme rules.</p>
                </div>
            </article>

            <div class="faq-empty" id="faqEmpty" hidden>
                <span class="faq-empty-icon">&#128269;</span>
                <h3>No questions found</h3>
                <p>Try a different keyword or select another category.</p>
                <button type="button" id="faqReset">Show All Questions</button>
            </div>

        </div>
    </div>

    <div class="faq-support">
        <div class="faq-support-text">
            <h2>Still have questions or need offline help?</h2>
            <p>Our support desk coordinates directly with local Panchayat offices and regional centres. Reach out to our civic experts anytime.</p>
        </div>
        <div class="faq-support-actions">
            <a class="faq-support-primary" href="Contact.aspx">Go to Support Page</a>
            <a class="faq-support-secondary" href="mailto:support@gramsahayak.in?subject=Gram%20Sahayak%20Help">Email Support</a>
        </div>
    </div>
</section>

<script>
(function () {
    "use strict";

    const searchInput = document.getElementById("faqSearch");
    const searchButton = document.getElementById("faqSearchButton");
    const searchStatus = document.getElementById("faqSearchStatus");
    const categoryButtons = Array.from(document.querySelectorAll(".faq-category"));
    const faqItems = Array.from(document.querySelectorAll(".faq-item"));
    const emptyState = document.getElementById("faqEmpty");
    const resetButton = document.getElementById("faqReset");

    let activeCategory = "all";
    let searchTerm = "";

    function normalize(value) {
        return (value || "").toLocaleLowerCase().trim();
    }

    function closeItem(item) {
        item.classList.remove("open");
        const button = item.querySelector(".faq-question");
        const answer = item.querySelector(".faq-answer");

        button.setAttribute("aria-expanded", "false");
        answer.hidden = true;
    }

    function updateCounts() {
        const counts = { all: 0, eligibility: 0, documents: 0, application: 0, schemes: 0 };

        faqItems.forEach(function (item) {
            const category = item.dataset.category;
            counts.all++;

            if (Object.prototype.hasOwnProperty.call(counts, category)) {
                counts[category]++;
            }
        });

        Object.keys(counts).forEach(function (category) {
            const countElement = document.querySelector('[data-count="' + category + '"]');
            if (countElement) {
                countElement.textContent = counts[category];
            }
        });
    }

    function filterFAQs() {
        let visibleCount = 0;

        faqItems.forEach(function (item) {
            const categoryMatches =
                activeCategory === "all" || item.dataset.category === activeCategory;

            const textMatches =
                searchTerm === "" || normalize(item.textContent).includes(searchTerm);

            const visible = categoryMatches && textMatches;
            item.hidden = !visible;

            if (!visible) {
                closeItem(item);
            } else {
                visibleCount++;
            }
        });

        emptyState.hidden = visibleCount !== 0;

        if (searchTerm) {
            searchStatus.textContent = visibleCount +
                (visibleCount === 1 ? " question found." : " questions found.");
        } else {
            searchStatus.textContent = "";
        }
    }

    categoryButtons.forEach(function (button) {
        button.addEventListener("click", function () {
            activeCategory = button.dataset.category;

            categoryButtons.forEach(function (categoryButton) {
                const isActive = categoryButton === button;
                categoryButton.classList.toggle("active", isActive);
                categoryButton.setAttribute("aria-pressed", String(isActive));
            });

            filterFAQs();
        });

        button.setAttribute(
            "aria-pressed",
            String(button.dataset.category === activeCategory)
        );
    });

    document.querySelectorAll(".faq-question").forEach(function (button) {
        button.addEventListener("click", function () {
            const item = button.closest(".faq-item");
            const answer = item.querySelector(".faq-answer");
            const willOpen = answer.hidden;

            closeItem(item);

            if (willOpen) {
                item.classList.add("open");
                button.setAttribute("aria-expanded", "true");
                answer.hidden = false;
            }
        });
    });

    function runSearch() {
        searchTerm = normalize(searchInput.value);
        filterFAQs();
    }

    searchButton.addEventListener("click", runSearch);

    searchInput.addEventListener("keydown", function (event) {
        if (event.key === "Enter") {
            event.preventDefault();
            runSearch();
        }
    });

    searchInput.addEventListener("input", runSearch);

    resetButton.addEventListener("click", function () {
        activeCategory = "all";
        searchTerm = "";
        searchInput.value = "";

        categoryButtons.forEach(function (button) {
            const isActive = button.dataset.category === "all";
            button.classList.toggle("active", isActive);
            button.setAttribute("aria-pressed", String(isActive));
        });

        filterFAQs();
    });

    updateCounts();
    filterFAQs();
})();
</script>

</asp:Content>
