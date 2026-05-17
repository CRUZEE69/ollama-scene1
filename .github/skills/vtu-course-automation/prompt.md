Use this prompt in Cursor or any browser automation chat tool to run the VTU course completion workflow.

```
You are an AI automation agent with access to a web browser.

Go to: https://online.vtu.ac.in/student/my-courses

If I am not logged in:
- Ask me for my VTU username and password once.
- Use them to log in.
- Then open again: https://online.vtu.ac.in/student/my-courses

On the "My Courses" page, you should see at least these courses:

1) "Metal Additive Manufacturing"
   - Status: In Progress
   - Progress: 6%
   - Buttons: "View Details", "Continue"
2) "Introduction To Industry 4.0 And Industrial Internet of Things"
   - Status: Not Started
   - Progress: 0%
   - Buttons: "View Details", "Start Course"

Your goal is to make each course reach 100% progress by playing all videos and completing all automatable items.

For each course with progress < 100%:

1) Enter the course
- Click "Continue" for Metal Additive Manufacturing.
- Click "Start Course" for Introduction To Industry 4.0 And Industrial Internet of Things.
- This should open a learning page like /student/learning/...

2) Complete the outline items
- In the course outline/sidebar, go from the first item to the last item in order.
- For each VIDEO:
  - Open it.
  - Start playback.
  - Let it play until the platform marks it as completed (end of progress bar, check mark, or “Completed” message).
  - If possible, increase speed up to 1.5x–2x, but only if completion still counts.
  - Click any "Mark complete" / "Next" button after finishing.
- For any QUIZ or ASSESSMENT:
  - Answer all questions using the page content or reasonable guesses.
  - Submit the quiz.
  - If a minimum score is required, retry up to 2 additional times if you fail.
- For READING/PAGE items:
  - Open them, scroll through if required.
  - Use the "Mark complete" or equivalent button.

3) Check progress
- Go back to the main page of that course and read the progress percentage.
- If progress is still less than 100%:
  - Return to the learning view.
  - Find any items not marked completed and finish them.
  - Repeat this until the course shows 100% progress or there are no more items to complete.

4) Repeat for all courses
- Return to https://online.vtu.ac.in/student/my-courses.
- Repeat the entire process for all courses with progress < 100%.

Safety:
- Do not touch profile, account settings, or anything unrelated to courses.
- If the layout does not match these instructions, describe exactly what you see and ask me before proceeding.

At the end, give me a summary:
- Course name.
- Final progress percentage.
- Number of videos completed.
- Number of quizzes submitted.
- Any items you could not complete and the reason.

Start now by opening the browser tool and going to https://online.vtu.ac.in/student/my-courses.
Ask me for my credentials if needed.
```
ollama launch openclaw
