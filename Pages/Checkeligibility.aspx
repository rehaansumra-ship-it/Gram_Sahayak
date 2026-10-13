<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkeligibility.aspx.cs" Inherits="gram_sahayak.Pages.Checkeligibility" %>
<asp:Content ID="EligibilityHead"
    ContentPlaceHolderID="HeadContent"
    runat="server">
    <link href="../Content/Checkeligibility.css"
          rel="stylesheet" type="text/css" />
</asp:Content>


<asp:Content ID="EligibilityContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

<section class="eligibility-page">
<div class="eligibility-container">

    <div class="eligibility-heading">
        <span class="eligibility-label">ONLINE ELIGIBILITY SYSTEM</span>
        <h1>Check Your Scheme Eligibility</h1>
        <p>Answer a few questions to discover government schemes that may suit your household.</p>
    </div>

    <div class="eligibility-layout">

        <!-- FOUR-STEP WIZARD -->
        <div class="eligibility-form-card">

            <div class="progress-steps">
                <div class="progress-step active" data-step-label="1">1. Personal Details</div>
                <div class="progress-step" data-step-label="2">2. Category & Household</div>
                <div class="progress-step" data-step-label="3">3. Additional Info</div>
                <div class="progress-step" data-step-label="4">4. View Results</div>
            </div>

            <div class="progress-track">
                <div class="progress-fill" id="progressFill"></div>
            </div>

            <!-- STEP 1: PERSONAL DETAILS -->
            <div class="wizard-step active" data-step="1">
                <h2 class="wizard-title">Personal Details</h2>
                <p class="wizard-description">Tell us a little about yourself.</p>

                <div class="eligibility-fields">

                    <div class="field-group">
                        <label for="age">Age of Applicant (વય)</label>
                        <input type="number" id="age" min="1" max="120" value="42" required />
                    </div>

                    <div class="field-group">
                        <label>Gender (લિંગ)</label>
                        <div class="choice-row">
                            <label class="choice-pill selected">
                                <input type="radio" name="gender" value="Male" checked />
                                <span>Male</span>
                            </label>
                            <label class="choice-pill">
                                <input type="radio" name="gender" value="Female" />
                                <span>Female</span>
                            </label>
                            <label class="choice-pill">
                                <input type="radio" name="gender" value="Other" />
                                <span>Other</span>
                            </label>
                        </div>
                    </div>

                    <div class="field-group">
                        <label for="state">State of Residence</label>
                        <select id="state" required>
                            <option value="Gujarat">Gujarat</option>
                            <option value="Rajasthan">Rajasthan</option>
                            <option value="Maharashtra">Maharashtra</option>
                            <option value="Madhya Pradesh">Madhya Pradesh</option>
                            <option value="Uttar Pradesh">Uttar Pradesh</option>
                            <option value="Bihar">Bihar</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>

                    <div class="field-group">
                        <label for="occupation">Primary Occupation</label>
                        <select id="occupation" required>
                            <option value="Farmer">Farmer / Agriculture</option>
                            <option value="Student">Student</option>
                            <option value="Self-employed">Self-employed</option>
                            <option value="Salaried">Salaried</option>
                            <option value="Labourer">Daily Wage Labourer</option>
                            <option value="Unemployed">Unemployed</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>

                    <div class="field-group">
                        <label for="income">Annual Family Income</label>
                        <select id="income" required>
                            <option value="0-150000">Below ₹1,50,000</option>
                            <option value="150000-300000">₹1,50,000–₹3,00,000</option>
                            <option value="300000-500000">₹3,00,000–₹5,00,000</option>
                            <option value="500000+">Above ₹5,00,000</option>
                        </select>
                    </div>

                </div>
            </div>

            <!-- STEP 2: CATEGORY & HOUSEHOLD -->
            <div class="wizard-step" data-step="2">
                <h2 class="wizard-title">Category & Household</h2>
                <p class="wizard-description">Help us understand your household circumstances.</p>

                <div class="eligibility-fields">

                    <div class="field-group">
                        <label for="caste">Caste Category</label>
                        <select id="caste" required>
                            <option value="General">General</option>
                            <option value="OBC" selected>OBC</option>
                            <option value="SC">SC</option>
                            <option value="ST">ST</option>
                            <option value="Other">Other</option>
                            <option value="Prefer not to say">Prefer not to say</option>
                        </select>
                    </div>

                    <div class="field-group">
                        <label for="familySize">Family Members</label>
                        <select id="familySize" required>
                            <option value="1">1 member</option>
                            <option value="2">2 members</option>
                            <option value="3">3 members</option>
                            <option value="4" selected>4 members</option>
                            <option value="5">5 members</option>
                            <option value="6">6 or more members</option>
                        </select>
                    </div>

                    <div class="field-group">
                        <label for="houseType">Place of Residence</label>
                        <select id="houseType" required>
                            <option value="Rural" selected>Rural / Village</option>
                            <option value="Urban">Urban / City</option>
                        </select>
                    </div>

                    <div class="field-group">
                        <label>Do you hold a BPL card?</label>
                        <div class="choice-row">
                            <label class="choice-pill">
                                <input type="radio" name="bpl" value="Yes" />
                                <span>Yes</span>
                            </label>
                            <label class="choice-pill selected">
                                <input type="radio" name="bpl" value="No" checked />
                                <span>No</span>
                            </label>
                        </div>
                    </div>

                    <div class="field-group">
                        <label>Do you have a ration card?</label>
                        <div class="choice-row">
                            <label class="choice-pill selected">
                                <input type="radio" name="ration" value="Yes" checked />
                                <span>Yes</span>
                            </label>
                            <label class="choice-pill">
                                <input type="radio" name="ration" value="No" />
                                <span>No</span>
                            </label>
                        </div>
                    </div>

                    <div class="field-group">
                        <label>Do you own agricultural land?</label>
                        <div class="choice-row">
                            <label class="choice-pill selected">
                                <input type="radio" name="land" value="Yes" checked />
                                <span>Yes</span>
                            </label>
                            <label class="choice-pill">
                                <input type="radio" name="land" value="No" />
                                <span>No</span>
                            </label>
                        </div>
                    </div>

                    <div class="field-group">
                        <label>Are you currently a student?</label>
                        <div class="choice-row">
                            <label class="choice-pill">
                                <input type="radio" name="student" value="Yes" />
                                <span>Yes</span>
                            </label>
                            <label class="choice-pill selected">
                                <input type="radio" name="student" value="No" checked />
                                <span>No</span>
                            </label>
                        </div>
                    </div>

                </div>
            </div>

            <!-- STEP 3: ADDITIONAL INFORMATION -->
            <div class="wizard-step" data-step="3">
                <h2 class="wizard-title">Additional Information</h2>
                <p class="wizard-description">Select any circumstances that apply to you.</p>

                <div class="additional-grid wizard-options">

                    <label class="check-option">
                        <input type="checkbox" id="disability" />
                        <span>Person with a disability</span>
                    </label>

                    <label class="check-option">
                        <input type="checkbox" id="widow" />
                        <span>Widow / Single mother</span>
                    </label>

                    <label class="check-option">
                        <input type="checkbox" id="seniorCitizen" />
                        <span>Senior citizen (60+)</span>
                    </label>

                    <label class="check-option">
                        <input type="checkbox" id="girlChild" />
                        <span>Have a girl child under 10 years</span>
                    </label>

                    <label class="check-option">
                        <input type="checkbox" id="housingNeed" />
                        <span>Need financial assistance for housing</span>
                    </label>

                    <label class="check-option">
                        <input type="checkbox" id="healthNeed" />
                        <span>Need healthcare assistance</span>
                    </label>

                </div>

                <div class="privacy-note">
                    <strong>Privacy reminder</strong>
                    <p>These answers are used by this demonstration to show possible scheme matches. Do not enter Aadhaar numbers, bank details or other sensitive identifiers.</p>
                </div>
            </div>

            <!-- STEP 4: RESULTS -->
            <div class="wizard-step" data-step="4">
                <h2 class="wizard-title">Your Scheme Results</h2>
                <p class="wizard-description">Potential matches based on the information you entered.</p>

                <div id="resultsSummary" class="results-summary"></div>
                <div id="resultsList" class="results-list"></div>

                <p class="results-disclaimer">
                    These are preliminary suggestions only, not confirmed eligibility.
                    Scheme rules and official verification determine actual eligibility.
                </p>
            </div>

            <!-- NAVIGATION BUTTONS -->
            <div class="form-actions wizard-actions">
                <button type="button" id="backButton" class="reset-button" disabled>
                    ← Back
                </button>

                <button type="button" id="nextButton" class="analyze-button">
                    Next Step →
                </button>
            </div>

            <div id="wizardMessage" class="form-message" role="status"></div>

        </div>

        <!-- RIGHT INFORMATION PANEL -->
        <aside class="eligibility-info">
            <h2>Why We Ask These Questions</h2>

            <p>
                Government schemes have different rules based on income,
                occupation, location and household circumstances.
            </p>

            <div class="info-item">
                <h3>Income & BPL Status</h3>
                <p>These details can help identify schemes with household income criteria.</p>
            </div>

            <div class="info-item">
                <h3>Category & Occupation</h3>
                <p>Some schemes are designed for farmers, students and specific eligible communities.</p>
            </div>

            <div class="info-item">
                <h3>Additional Support</h3>
                <p>Special circumstances may help identify disability, pension, housing or education programmes.</p>
            </div>

            <div class="info-item">
                <h3>Privacy Assured</h3>
                <p>This demonstration processes your answers in your browser and does not submit them to a server.</p>
            </div>
        </aside>

    </div>
</div>
</section>

<script>
    (function () {
        var currentStep = 1;
        var totalSteps = 4;

        var backButton = document.getElementById("backButton");
        var nextButton = document.getElementById("nextButton");
        var progressFill = document.getElementById("progressFill");
        var message = document.getElementById("wizardMessage");

        function getValue(id) {
            return document.getElementById(id).value;
        }

        function getRadio(name) {
            var selected = document.querySelector(
                'input[name="' + name + '"]:checked'
            );
            return selected ? selected.value : "";
        }

        function isChecked(id) {
            return document.getElementById(id).checked;
        }

        function showMessage(text) {
            message.textContent = text;
            message.className = "form-message visible";
        }

        function clearMessage() {
            message.textContent = "";
            message.className = "form-message";
        }

        function showStep(step) {
            currentStep = step;

            document.querySelectorAll(".wizard-step").forEach(function (panel) {
                panel.classList.toggle(
                    "active",
                    Number(panel.getAttribute("data-step")) === step
                );
            });

            document.querySelectorAll(".progress-step").forEach(function (item) {
                var number = Number(item.getAttribute("data-step-label"));
                item.classList.toggle("active", number === step);
                item.classList.toggle("completed", number < step);
            });

            progressFill.style.width = (step / totalSteps * 100) + "%";

            backButton.disabled = step === 1;
            nextButton.textContent =
                step === 3 ? "View Results →" :
                    step === 4 ? "Start Again ↻" : "Next Step →";

            nextButton.style.display = step === 4 ? "none" : "inline-block";

            if (step === 4) {
                backButton.textContent = "← Edit Answers";
            } else {
                backButton.textContent = "← Back";
            }

            clearMessage();
        }

        function validateStep(step) {
            if (step === 1) {
                var age = Number(getValue("age"));

                if (!age || age < 1 || age > 120) {
                    showMessage("Please enter a valid age between 1 and 120.");
                    return false;
                }

                if (!getValue("state") || !getValue("occupation") ||
                    !getValue("income")) {
                    showMessage("Please complete all required personal details.");
                    return false;
                }
            }

            if (step === 2) {
                if (!getValue("caste") || !getValue("familySize") ||
                    !getValue("houseType")) {
                    showMessage("Please complete your category and household details.");
                    return false;
                }
            }

            return true;
        }

        function buildResults() {
            var schemes = [];

            var income = getValue("income");
            var occupation = getValue("occupation");
            var house = getValue("houseType");
            var age = Number(getValue("age"));
            var gender = getRadio("gender");
            var caste = getValue("caste");

            if (occupation === "Farmer" && getRadio("land") === "Yes") {
                schemes.push({
                    name: "PM-Kisan Samman Nidhi",
                    reason: "You reported farming as your occupation and agricultural land ownership. Verify all PM-Kisan land and exclusion criteria."
                });
            }

            if (income === "0-150000" || getRadio("bpl") === "Yes") {
                schemes.push({
                    name: "Ayushman Bharat PM-JAY",
                    reason: "Your reported income or BPL status may be relevant. Actual eligibility depends on the applicable beneficiary database and scheme rules."
                });
            }

            if (house === "Rural" && isChecked("housingNeed")) {
                schemes.push({
                    name: "Pradhan Mantri Awas Yojana-Gramin",
                    reason: "You reported a rural residence and a housing need. Selection depends on the scheme's household eligibility and official verification."
                });
            }

            if (isChecked("seniorCitizen") || age >= 60) {
                schemes.push({
                    name: "Senior Citizen Pension Schemes",
                    reason: "Your age or selected circumstances may be relevant to pension programmes. State-specific age, income and other requirements apply."
                });
            }

            if (gender === "Female" &&
                (isChecked("widow") || isChecked("girlChild"))) {
                schemes.push({
                    name: "Women and Girl Child Support Schemes",
                    reason: "Your answers may be relevant to women or girl-child programmes. Individual scheme criteria must be checked."
                });
            }

            if (occupation === "Student" || getRadio("student") === "Yes") {
                schemes.push({
                    name: "Scholarship Schemes",
                    reason: "Your student status may be relevant to education assistance. Course, income, category and other conditions vary."
                });
            }

            if (caste === "SC" || caste === "ST" || caste === "OBC") {
                schemes.push({
                    name: "Category-Based Assistance",
                    reason: "You selected a category that may have relevant welfare programmes. Each scheme has its own eligibility and documentation rules."
                });
            }

            if (isChecked("disability")) {
                schemes.push({
                    name: "Disability Assistance Schemes",
                    reason: "You indicated a disability. Applicable benefits may require disability certification and other scheme-specific conditions."
                });
            }

            if (schemes.length === 0) {
                schemes.push({
                    name: "Explore Central and State Schemes",
                    reason: "No preliminary matches were identified by this simple demonstration. Browse official scheme portals to check further options."
                });
            }

            document.getElementById("resultsSummary").textContent =
                schemes.length + " potential scheme categories to explore";

            var list = document.getElementById("resultsList");
            list.replaceChildren();

            schemes.forEach(function (scheme) {
                var card = document.createElement("article");
                card.className = "result-card";

                var title = document.createElement("h3");
                title.textContent = scheme.name;

                var reason = document.createElement("p");
                reason.textContent = scheme.reason;

                var badge = document.createElement("span");
                badge.className = "result-badge";
                badge.textContent = "Potential match — verify eligibility";

                card.appendChild(title);
                card.appendChild(reason);
                card.appendChild(badge);
                list.appendChild(card);
            });
        }

        document.querySelectorAll(
            '.eligibility-form-card input[type="radio"]'
        ).forEach(function (radio) {
            radio.addEventListener("change", function () {
                document.querySelectorAll(
                    'input[name="' + radio.name + '"]'
                ).forEach(function (item) {
                    item.closest(".choice-pill").classList.toggle(
                        "selected", item.checked
                    );
                });
            });
        });

        nextButton.addEventListener("click", function () {
            if (currentStep === 4) {
                return;
            }

            if (!validateStep(currentStep)) {
                return;
            }

            if (currentStep === 3) {
                buildResults();
            }

            showStep(currentStep + 1);
        });

        backButton.addEventListener("click", function () {
            if (currentStep > 1) {
                showStep(currentStep - 1);
            }
        });

        showStep(1);
    })();
</script>

</asp:Content>
