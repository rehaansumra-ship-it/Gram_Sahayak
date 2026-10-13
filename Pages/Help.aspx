<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="gram_sahayak.Pages.Help" %>


<asp:Content ID="HelpHead" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../Content/Help.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="HelpContent" ContentPlaceHolderID="MainContent" runat="server">

<section class="help-page">

    <div class="help-heading">
        <span class="help-label">OFFLINE ASSISTANCE</span>
        <h1>Get Help &amp; Support</h1>
        <p>Connect with local offices, Gram Panchayat administrators, and Service Centers near you.</p>
    </div>

    <div class="help-office-grid">

        <article class="help-office-card">
            <div class="help-office-icon green-icon">&#9638;</div>
            <span class="help-office-type">OFFLINE DESK</span>
            <h2>Gram Panchayat Office</h2>
            <p>Visit your local Gram Panchayat for direct physical support, document verification assistance, and offline registrations.</p>
            <div class="help-office-details">
                <p>&#128205; Nearest Local Panchayat Representative</p>
                <p>&#128222; Village Panchayat Office / Civic Desk</p>
            </div>
            <a class="help-card-button green-button"
               href="https://www.google.com/maps/search/Gram+Panchayat+office+near+me"
               target="_blank" rel="noopener">Get Directions</a>
        </article>

        <article class="help-office-card">
            <div class="help-office-icon orange-icon">&#9786;</div>
            <span class="help-office-type orange-text">DIGITAL FACILITATION</span>
            <h2>Common Service Centre (CSC)</h2>
            <p>CSC digital facilitators can assist you in application certification, uploads and technical, and complete online forms for you.</p>
            <div class="help-office-details">
                <p>&#128338; Hours: Mon - Sat, 9:00 AM - 6:00 PM</p>
                <p>&#10003; Services: Digital applications and government guidelines</p>
            </div>
            <a class="help-card-button orange-button"
               href="https://www.google.com/maps/search/Common+Service+Centre+CSC+near+me"
               target="_blank" rel="noopener">Find Nearest CSC</a>
        </article>

        <article class="help-office-card">
            <div class="help-office-icon blue-icon">&#127970;</div>
            <span class="help-office-type blue-text">OFFICIAL INQUIRY</span>
            <h2>District Government Office</h2>
            <p>For complex queries, eligibility escalations, or scheme complaints, contact the district authorities directly.</p>
            <div class="help-office-details">
                <p>&#128205; Phone: 1800-XXX-Office</p>
                <p>&#9993; Email: contact-district@nic.in</p>
            </div>
            <a class="help-card-button outline-button"
               href="Contact.aspx">Contact Office</a>
        </article>

    </div>

    <div class="help-helpline">
        <div class="helpline-icon">&#9742;</div>
        <div class="helpline-text">
            <h2>National Scheme Helpline: 1800-425-1033</h2>
            <p>Support availability and scheme-specific contact details should be verified with the official department.</p>
        </div>
        <a href="tel:18004251033" class="helpline-call">Call Now &#8594;</a>
    </div>

    <div class="help-main-grid">

        <div class="help-left-column">

            <section class="help-panel">
                <h2>How to Get Help Properly</h2>

                <div class="help-step">
                    <span class="help-step-number">01</span>
                    <div>
                        <h3>Identify your query or scheme matching discrepancy</h3>
                        <p>Verify your stated details and basic requirements.</p>
                    </div>
                </div>

                <div class="help-step">
                    <span class="help-step-number">02</span>
                    <div>
                        <h3>Choose the correct support facility</h3>
                        <p>Choose Panchayat for rural services, CSC for digital filings, District Office for escalations.</p>
                    </div>
                </div>

                <div class="help-step">
                    <span class="help-step-number">03</span>
                    <div>
                        <h3>Prepare &amp; carry required physical documentation</h3>
                        <p>Keep relevant identity, income, residence, and scheme documents ready.</p>
                    </div>
                </div>

                <div class="help-step">
                    <span class="help-step-number">04</span>
                    <div>
                        <h3>Visit during scheduled administrative hours</h3>
                        <p>Office timings differ; confirm them before visiting to avoid a second trip.</p>
                    </div>
                </div>
            </section>

            <section class="help-panel feedback-panel">
                <h2>Rate Your Experience</h2>
                <p>Help us improve Gram Sahayak. Share feedback regarding scheme access or system speed.</p>

                <div class="help-rating" role="group" aria-label="Rate your experience">
                    <button type="button" class="rating-star" data-rating="1" aria-label="1 star">&#9734;</button>
                    <button type="button" class="rating-star" data-rating="2" aria-label="2 stars">&#9734;</button>
                    <button type="button" class="rating-star" data-rating="3" aria-label="3 stars">&#9734;</button>
                    <button type="button" class="rating-star" data-rating="4" aria-label="4 stars">&#9734;</button>
                    <button type="button" class="rating-star" data-rating="5" aria-label="5 stars">&#9734;</button>
                    <span class="rating-message" id="ratingMessage">Rate your experience</span>
                </div>

                <label class="feedback-label" for="feedbackText">
                    Write your comments or suggestions (તમારો અભિપ્રાય લખો)
                </label>

                <textarea id="feedbackText" rows="4" maxlength="1000"
                    placeholder="Write here..."></textarea>

                <p class="feedback-error" id="feedbackError" aria-live="polite"></p>

                <button type="button" class="feedback-submit" id="feedbackSubmit">
                    Submit Feedback
                </button>

                <div class="feedback-result" id="feedbackResult" role="status" hidden></div>
            </section>

        </div>

        <aside class="help-hotlines">
            <h2>National Civic Helplines</h2>
            <p class="hotline-intro">These contacts can help you find the right government service.</p>

            <div class="hotline-row">
                <span>Women Helpline (India)</span>
                <a href="tel:181">181</a>
            </div>

            <div class="hotline-row">
                <span>Child Helpline</span>
                <a href="tel:1098">1098</a>
            </div>

            <div class="hotline-row">
                <span>Senior Citizens Support Desk</span>
                <a href="tel:14567">14567</a>
            </div>

            <div class="hotline-row">
                <span>Disabled Persons' Civic Welfare Help</span>
                <a href="tel:1800114515">1800-11-4515</a>
            </div>

            <p class="hotline-note">
                Please verify helpline availability and purpose with the relevant official government source before relying on a number.
            </p>
        </aside>

    </div>

</section>

<script>
(function () {
    "use strict";

    var selectedRating = 0;
    var ratingButtons = Array.prototype.slice.call(
        document.querySelectorAll(".rating-star")
    );

    var ratingMessage = document.getElementById("ratingMessage");
    var feedbackText = document.getElementById("feedbackText");
    var feedbackError = document.getElementById("feedbackError");
    var feedbackResult = document.getElementById("feedbackResult");
    var feedbackSubmit = document.getElementById("feedbackSubmit");

    var ratingLabels = {
        1: "Poor",
        2: "Fair",
        3: "Good",
        4: "Very Good",
        5: "Excellent"
    };

    function updateRating(rating) {
        selectedRating = rating;

        ratingButtons.forEach(function (button) {
            var active = Number(button.dataset.rating) <= rating;
            button.classList.toggle("selected", active);
            button.textContent = active ? "\u2605" : "\u2606";
            button.setAttribute("aria-pressed",
                String(Number(button.dataset.rating) === rating));
        });

        ratingMessage.textContent = ratingLabels[rating];
        feedbackError.textContent = "";
    }

    ratingButtons.forEach(function (button) {
        button.addEventListener("click", function () {
            updateRating(Number(button.dataset.rating));
        });

        button.addEventListener("mouseenter", function () {
            var hoverRating = Number(button.dataset.rating);

            ratingButtons.forEach(function (star) {
                star.classList.toggle(
                    "hovered",
                    Number(star.dataset.rating) <= hoverRating
                );
            });
        });
    });

    document.querySelector(".help-rating").addEventListener("mouseleave", function () {
        ratingButtons.forEach(function (star) {
            star.classList.remove("hovered");
        });
    });

    feedbackSubmit.addEventListener("click", function () {
        var comment = feedbackText.value.trim();

        if (selectedRating === 0) {
            feedbackError.textContent = "Please select a star rating first.";
            return;
        }

        if (comment.length === 0) {
            feedbackError.textContent = "Please enter your feedback.";
            feedbackText.focus();
            return;
        }

        feedbackError.textContent = "";
        feedbackResult.hidden = false;
        feedbackResult.textContent =
            "Thank you for your " + selectedRating +
            "-star rating and feedback. This demo has validated your feedback, but has not saved it to a database.";

        feedbackResult.classList.add("visible");
    });
})();
</script>

</asp:Content>
