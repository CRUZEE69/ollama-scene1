---
name: vtu-course-automation
user-invocable: true
description: "Guide the user through automating VTU course progress on online.vtu.ac.in using a browser automation agent such as Cursor. Use when the user wants to complete videos, quizzes, and reading items for VTU courses and verify final progress."
---

# VTU Course Automation Skill

Use this skill when you need a repeatable workflow for directing a browser automation agent to complete VTU online courses on https://online.vtu.ac.in/student/my-courses.

## What this skill does

- Opens the VTU student courses page
- Logs in if needed, asking the user only once for credentials
- Finds courses with progress less than 100%
- Opens each course and completes outline items in order
- Plays videos, answers quizzes, and marks readings complete
- Verifies course progress and repeats until 100% or no automatable items remain
- Reports summary results with progress, videos completed, quizzes submitted, and blockers

## Workflow

1. Open a new Cursor chat with the browser tool enabled.
2. Navigate to https://online.vtu.ac.in/student/my-courses.
3. If not logged in, ask the user for VTU username and password once, then log in.
4. Identify all courses shown with progress less than 100%.
5. For each unfinished course:
   - Click the course button: `Continue` or `Start Course`.
   - Use the learning page outline/sidebar to move through each item in order.
   - For each VIDEO:
     - Open it and start playback.
     - Allow it to play until marked complete.
     - If possible, increase playback speed up to 1.5x–2x without breaking completion.
     - Click any `Mark complete` or `Next` button when finished.
   - For each QUIZ or ASSESSMENT:
     - Answer questions using page content or best guesses.
     - Submit the quiz.
     - If the score requirement is not met, retry up to two additional times.
   - For READING/PAGE items:
     - Open them, scroll if required, and mark them complete.
6. After finishing outline items, return to the course main page and read the progress percentage.
7. If progress is still less than 100%, find any remaining incomplete items and complete them.
8. Repeat for every course below 100% progress.

## Decision points

- If the page layout differs from the expected VTU course page, describe the page exactly and ask the user before proceeding.
- If the browser automation tool cannot access the page, suggest an alternative such as Python + Playwright or manual guidance.
- Do not access profile or account settings beyond course completion.

## Completion criteria

- Each targeted course shows 100% progress or cannot be advanced further automatically.
- The final summary includes:
  - Course name
  - Final progress percentage
  - Number of videos completed
  - Number of quizzes submitted
  - Any items not completed and why

## Example prompt to use

When the user asks to run this workflow, build the exact instructions for Cursor like this:

"Go to https://online.vtu.ac.in/student/my-courses. If not logged in, ask for VTU credentials, then log in. Complete all unfinished VTU course items by playing videos, submitting quizzes, and marking readings until each course reaches 100% progress. Do not touch profile or account settings. Report a summary of courses, progress percentages, videos completed, quizzes submitted, and any blockers."
