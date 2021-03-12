# Solution Test 4

## Step by Step for Troubleshooting

### Notify All Stakeholders

- The first step is to communicate that the service is down to all stakeholders.
- This can be done in form of a chat message to the general channel, an email copying relevant personnel or through any communication tool that the team uses.
- The importance of communication is to bring up the issue to everyone's attention and for all hands to be on deck. Sometimes, someone may just respond to your message with why the issue is happening (assuming it was a mistake from his/her part). But the goal is to inform and bring in the members of your team.

### Identify the Problem

- You have received chat notification that the service is down or your customers have started complaining that they cannot access your services.
- Identifying the problem implies having an in-depth look at the outage message you got. If this message is not clear enough, you should look at the application logs.
- If the application is not displaying data, it will be erroneous to just assume that the problem is coming from the database. In this case, going to troubleshoot the database server may be a futile task and you may end up creating a bigger problem.
- Therefore, first identify the problem and the source of the problem.

### Reference the Engineering Runbook

- When the problem has been identified, the next recommended step is to make reference to the engineering runbook. Check if the runbook contains procedures for resolving the issue especially if this is an issue that the team are familiar with. Usually, it does. It may even include a guide on who next to message if you do not have enough permission to resolve the issue.
- What if the solution does not exist in the engineering runbook, moving up to the next step.

### Diagnose

- It’s important to employ the right tools to help you with infrastructure monitoring. Software analytics solutions like Prometheus, Grafan, NewRelic let you visualize events and data in real-time to measure performance and detect issues. Choose wisely. Your monitoring tool depends largely on your business, your process, and your infrastructure.
Unfortunately, even the best tools have limitations. A developer can’t leave diagnosis entirely up to tools. This is where experience is key. Once detected, you might need to further investigate performance issues to detect the root cause.
- All these scenarios need to be considered and accounted for through automation, with added support from your own investigative efforts.

### Solution

- Once you’ve detected and diagnosed the problem, it’s time to fix it. But fixing a problem isn’t a one and done matter. After you find your solution, it has to be applied and tested in real time, and the knowledge learned documented.
- Your solution should produce positive test results on all tiers of the system, in various environments, while maintaining or improving service quality.
- It is a good to periodically backup your server. However, in this case, you need the most recent backup just in case things go south. Also, it is a necessary step to take especially if the solution is complex or that the team has some reservations about the solution they came up with.
In some cases, the engineering team will set up another server and route traffic to it before proceeding. This is not applicable in every case but if it can be done and it seems like the fix is taking long, then this should be considered.

### Document

- Now is a good time to contribute to the Engineering Runbook. It will help the team to quickly recover from such when/if it happens next time. It also serves as a reference to the team when they want to rebuild the system to be resistant to such issues.

## How about if it was your colleague that done it ?


