<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Compare.aspx.cs" Inherits="gram_sahayak.Pages.Compare" %>




<asp:Content ID="CompareHead" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../Content/Compare.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="CompareContent" ContentPlaceHolderID="MainContent" runat="server">

<section class="compare-page">
    <div class="compare-container">

        <div class="compare-heading">
            <h1>Compare Schemes Side by Side</h1>
            <p>Analyze multiple benefits and criteria to determine the absolute match for your family parameters.</p>
        </div>

        <div class="compare-selectors">
            <select class="scheme-select" id="schemeSelect1" aria-label="First scheme">
                <option value="kisan" selected>PM Kisan Samman Nidhi</option>
                <option value="ayushman">Ayushman Bharat (PM-JAY)</option>
                <option value="awas">PM Awas Yojana (Rural)</option>
                <option value="sukanya">Sukanya Samriddhi Yojana</option>
                <option value="shram">PM Shram Yogi Maandhan</option>
                <option value="scholarship">Post Matric Scholarship</option>
            </select>

            <select class="scheme-select" id="schemeSelect2" aria-label="Second scheme">
                <option value="kisan">PM Kisan Samman Nidhi</option>
                <option value="ayushman" selected>Ayushman Bharat (PM-JAY)</option>
                <option value="awas">PM Awas Yojana (Rural)</option>
                <option value="sukanya">Sukanya Samriddhi Yojana</option>
                <option value="shram">PM Shram Yogi Maandhan</option>
                <option value="scholarship">Post Matric Scholarship</option>
            </select>

            <select class="scheme-select" id="schemeSelect3" aria-label="Third scheme">
                <option value="kisan">PM Kisan Samman Nidhi</option>
                <option value="ayushman">Ayushman Bharat (PM-JAY)</option>
                <option value="awas" selected>PM Awas Yojana (Rural)</option>
                <option value="sukanya">Sukanya Samriddhi Yojana</option>
                <option value="shram">PM Shram Yogi Maandhan</option>
                <option value="scholarship">Post Matric Scholarship</option>
            </select>
        </div>

        <div class="compare-table-wrapper">
            <table class="compare-table">
                <thead>
                    <tr>
                        <th>Scheme Name</th>
                        <th id="name1">PM Kisan Samman Nidhi</th>
                        <th id="name2">Ayushman Bharat (PM-JAY)</th>
                        <th id="name3">Pradhan Mantri Awas Yojana (Rural)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>Category</th>
                        <td id="category1"></td>
                        <td id="category2"></td>
                        <td id="category3"></td>
                    </tr>
                    <tr>
                        <th>Key Benefits</th>
                        <td id="benefit1"></td>
                        <td id="benefit2"></td>
                        <td id="benefit3"></td>
                    </tr>
                    <tr>
                        <th>Eligibility Age</th>
                        <td id="age1"></td>
                        <td id="age2"></td>
                        <td id="age3"></td>
                    </tr>
                    <tr>
                        <th>Income Limit Status</th>
                        <td id="income1"></td>
                        <td id="income2"></td>
                        <td id="income3"></td>
                    </tr>
                    <tr>
                        <th>Target Citizens</th>
                        <td id="target1"></td>
                        <td id="target2"></td>
                        <td id="target3"></td>
                    </tr>
                    <tr>
                        <th>Required Docs</th>
                        <td id="docs1"></td>
                        <td id="docs2"></td>
                        <td id="docs3"></td>
                    </tr>
                    <tr>
                        <th>Application Mode</th>
                        <td id="mode1"></td>
                        <td id="mode2"></td>
                        <td id="mode3"></td>
                    </tr>
                    <tr class="apply-row">
                        <th></th>
                        <td><a id="apply1" href="https://pmkisan.gov.in/" target="_blank" rel="noopener noreferrer">Apply Now ›</a></td>
                        <td><a id="apply2" href="https://nha.gov.in/" target="_blank" rel="noopener noreferrer">Apply Now ›</a></td>
                        <td><a id="apply3" href="https://pmayg.nic.in/" target="_blank" rel="noopener noreferrer">Apply Now ›</a></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <p class="compare-note">
            Eligibility depends on the official scheme rules and verification by the relevant authority.
        </p>

    </div>
</section>

<script>
    (function () {
        "use strict";

        const schemes = {
            kisan: {
                name: "PM Kisan Samman Nidhi",
                category: "Agriculture",
                benefit: "₹6,000 per year through direct bank transfer",
                age: "No specific minimum age for land-owning farmers; applicant must qualify under scheme rules.",
                income: "No general ₹2 lakh income ceiling; exclusion rules apply.",
                target: "Eligible landholding farmer families",
                docs: "Aadhaar, land records and bank account details",
                mode: "Official PM-KISAN portal or eligible CSC",
                url: "https://pmkisan.gov.in/"
            },
            ayushman: {
                name: "Ayushman Bharat (PM-JAY)",
                category: "Healthcare",
                benefit: "Up to ₹5 lakh per eligible family per year for covered hospital treatment",
                age: "No general age limit for eligible beneficiaries",
                income: "Eligibility is based on applicable beneficiary criteria, not a universal ₹2 lakh limit.",
                target: "Eligible families under applicable beneficiary criteria",
                docs: "Aadhaar or other accepted ID and beneficiary verification documents",
                mode: "Official PM-JAY beneficiary services or empanelled hospitals",
                url: "https://nha.gov.in/"
            },
            awas: {
                name: "PM Awas Yojana (Rural)",
                category: "Housing",
                benefit: "Housing assistance according to applicable scheme provisions",
                age: "Household and applicant criteria apply",
                income: "Selection depends on applicable rural housing eligibility and priority rules.",
                target: "Eligible rural households meeting housing deprivation criteria",
                docs: "Identity documents and household or housing verification records",
                mode: "Gram Panchayat and official PMAY-G channels",
                url: "https://pmayg.nic.in/"
            },
            sukanya: {
                name: "Sukanya Samriddhi Yojana",
                category: "Financial Security",
                benefit: "Savings account with interest according to notified rates",
                age: "Girl child must generally be under 10 years when the account is opened",
                income: "No general family-income ceiling for opening an account",
                target: "Eligible girl child and her parent or legal guardian",
                docs: "Girl child's birth certificate and guardian KYC documents",
                mode: "Participating post office or authorised bank",
                url: "https://www.nsiindia.gov.in/"
            },
            shram: {
                name: "PM Shram Yogi Maandhan",
                category: "Pension",
                benefit: "Monthly pension of ₹3,000 after attaining 60 years, subject to scheme rules",
                age: "Entry age generally 18–40 years",
                income: "Eligible unorganised workers generally have monthly income up to ₹15,000 and must meet other conditions.",
                target: "Eligible unorganised-sector workers",
                docs: "Aadhaar and savings bank account details",
                mode: "Official scheme portal or authorised CSC",
                url: "https://maandhan.in/"
            },
            scholarship: {
                name: "Post Matric Scholarship",
                category: "Education",
                benefit: "Financial assistance according to the applicable scholarship scheme",
                age: "Depends on the specific scholarship and course",
                income: "Income ceiling depends on the scholarship category and scheme",
                target: "Students meeting the applicable category and course requirements",
                docs: "Student ID, income certificate and applicable category or academic documents",
                mode: "Applicable state or national scholarship portal",
                url: "https://scholarships.gov.in/"
            }
        };

        function setText(id, value) {
            document.getElementById(id).textContent = value;
        }

        function updateColumn(index, key) {
            const scheme = schemes[key];

            setText("name" + index, scheme.name);
            setText("category" + index, scheme.category);
            setText("benefit" + index, scheme.benefit);
            setText("age" + index, scheme.age);
            setText("income" + index, scheme.income);
            setText("target" + index, scheme.target);
            setText("docs" + index, scheme.docs);
            setText("mode" + index, scheme.mode);

            const applyLink = document.getElementById("apply" + index);
            applyLink.href = scheme.url;
            applyLink.setAttribute("aria-label", "Visit official website for " + scheme.name);
        }

        function updateComparison(changedSelect) {
            const selects = [
                document.getElementById("schemeSelect1"),
                document.getElementById("schemeSelect2"),
                document.getElementById("schemeSelect3")
            ];

            if (changedSelect) {
                const chosen = changedSelect.value;
                const duplicate = selects.some(function (select) {
                    return select !== changedSelect && select.value === chosen;
                });

                if (duplicate) {
                    const replacement = Array.from(changedSelect.options).find(function (option) {
                        return !selects.some(function (select) {
                            return select !== changedSelect && select.value === option.value;
                        });
                    });

                    if (replacement) {
                        changedSelect.value = replacement.value;
                    }
                }
            }

            const selectedValues = selects.map(function (select) {
                return select.value;
            });

            selects.forEach(function (select) {
                Array.from(select.options).forEach(function (option) {
                    option.disabled = selectedValues.includes(option.value) &&
                        option.value !== select.value;
                });
            });

            selects.forEach(function (select, index) {
                updateColumn(index + 1, select.value);
            });
        }

        const selects = document.querySelectorAll(".scheme-select");

        selects.forEach(function (select) {
            select.addEventListener("change", function () {
                updateComparison(select);
            });
        });

        updateComparison();
    })();
</script>

</asp:Content>

