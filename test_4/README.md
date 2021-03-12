# Solution Test 4

## Step by Step for Troubleshooting

### Notify All Stakeholders

- The first step is to announce about service breakdown accident to all stakeholders.
- This can be done in form of a chat message to the general channel, an email copying relevant personnel or through any communication tools which the team is using.
- The importance of announcement is to bring up the issue to everyone's attention and for all hands to be on deck. Sometimes, someone may just respond to your message with why the issue is happening (assuming it was a mistake from his/her part). But the goal is to inform to all members of my team.

### Identify the Problem

- You have received chat notification that the service is breakdown or your customers have started complaining that they cannot access your services.
- When the service got something wrong, it will warn by sending warning messages, error messages. Therefore, let check those messages thoroughly to identify the problems exactly.
- If the application is not displaying data, it will be erroneous to just assume that the problem is coming from the database. In this case, troubleshooting the database server may be a useless task and you may end up in a bigger problem.

### Reference the Engineering Runbook

- When the problem had been identified, the next recommended step is to reference the engineering run-book. In some cases, the run-book contains procedures for resolving those issues especially so run-book should be checked; sometimes those issues are familiar with other colleagues who are used to fix those in the past so we should ask co-workers too. With the run-book, you may know someone who are in charge of resolving the issues which are out of your permisssions.
- What if the solution does not exist in the engineering run-book, let move to the next step.

### Diagnose

- It’s important to employ the right tools to help you with infrastructure monitoring. Software analytics solutions such as Prometheus, Grafana, NewRelic, OpenTracing let you visualize events and data in real-time that helps you to measure performance and detect issues. Unfortunately, the best tools have limitations in some cases. Sometimes developers can’t diagnosis issues entirely by tools, so now experience for those issues is the most important key. Once detecting all problems, you might need to further investigation to detect the root cause.
- All these scenarios need to be considered and accounted for through automation, with supporting from your own investigative efforts.

### Solution

- Once you’ve detected and diagnosed the problem, it’s time to fix it. However, fixing a problem isn’t a one and done matter. After you find your solution, it has to be applied and tested in real time, and the knowledge learned documented.
- Your solution should produce positive test results on all tiers of the system, in various environments, while maintaining or improving service quality.
- It is a good to periodically backup your server. However, in this case, you need the most recent backup just in case things go south. Also, it is a necessary step to take especially if the solution is complex or that the team has some reservations about the solution they came up with.
- In some cases, the engineering team will set up another server and route traffic to it before proceeding. This is not applicable in every case but if it can be done and it seems like the fix is taking long, then this should be considered.

### Document

- Now is a good time to contribute to the Engineering Run-book. It will help the team to recover quickly when those issues happen next time. It also serves as a reference to the team when they want to rebuild the system for resisting such issues.

## How about if it was your colleague that done it ?


