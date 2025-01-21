// Get the current date
const currentDate = new Date();

// Set September 2 of the current year
const september2 = new Date(2024, 8, 2); // Month is 0-indexed, so 8 is September

// Calculate the difference in milliseconds
const diffInMs = currentDate - september2;

// Convert milliseconds to days
const diffInDays = diffInMs / (1000 * 60 * 60 * 24);

// Convert days to weeks
var diffInWeeks = Math.floor(diffInDays / 7);

const weekElements = document.querySelectorAll('[id^="week"]');
const links = Array.from(weekElements).map(element => element.id);

console.log(`found week links ${links}`);

if (diffInWeeks < 0) { diffInWeeks = 0; }
if (diffInWeeks > links.length) {
    throw new Error("Current date is past last class meeting");
}

const target = links[diffInWeeks];
console.log(`today (${currentDate}) since sept 2 (${september2}): ${diffInWeeks} -> ${target}`);

const currSpan = document.getElementById("curr");

// Create a new <a> tag
const aTag = document.createElement("a");
aTag.href = `#${links[diffInWeeks]}`;
aTag.textContent = currSpan.textContent;

// Replace the span with the new <a> tag
currSpan.parentNode.replaceChild(aTag, currSpan);

