#let meta = toml("../info.toml")
#import "../lib.typ": experience-entry
#import "projects.typ"
#import meta.import.fontawesome: *

#let icon = meta.section.icon.experience
#let include-icon = meta.personal.include_icons

= #if include-icon [#fa-icon(icon) #h(5pt)] Work experience

#show link: underline

#v(3pt)

#experience-entry(
  title: [Full Stack Software Engineer],
  date: [2025 - Present],
  company: [GiveCampus],
  location: [Remote],
)

- Developed full-stack features in Ruby on Rails and React, including payment integrations.
- Led a rework of a service that displays personalized information on giving forms depending on the intended recipient. Implemented form autofill logic, controller integration, email pipeline, and admin UI components.
- Spearheaded a public API initiative, prototyping RESTful endpoints to enable AI-assisted rapid development of custom frontend pages, validated as a proof of concept.
- Improved accessibility across user-facing pages for annual compliance reporting.
- Built an internal AI-powered UX consistency auditor using Claude Code with Chrome DevTools and Figma MCP integrations.
- Served as on-call support engineer to resolve bugs and data integrity issues, unblocking time-sensitive production workflows using New Relic, Sentry, and PagerDuty.

#v(3pt)

#experience-entry(
  title: [Software Engineer],
  date: [2023],
  company: [GTS Securities],
  location: [New York, NY],
)

- Developed a reconciliation system for messages sent and received by trading systems.
  - Integrated with Apache Kafka for reconciliation data and Redis for reporting mismatches.
- Participated in the full lifecycle of feature development from implementation and testing through deployment and verification.
- Assisted new hires with an on-boarding exercise to implement a simple trading model.

#v(3pt)

#experience-entry(
  title: [Software Engineer II],
  date: [2019 - 2022],
  company: [Microsoft],
  location: [Reston, VA],
)

- Worked on a team to implement an asynchronous and multi-threaded SFTP server in C++.
  - Integrated with existing backend storage APIs and monitoring infrastructure; contributed to QA and end-to-end testing.
  - Shared responsibilities for organizing sprint planning and participating in code reviews.
- Spent several days per month on-call as directly responsible engineer for API team.
  - Troubleshooted and resolved issues across the global surface of the cloud storage API.
  - Gained familiarity with every layer of the storage stack from public-facing SDKs and APIs down to the distributed filesystem.
  - Dug deeply into unfamiliar system layers to quickly remediate customer issues.
  - Exercised communication skills to organize responses across teams.
  - Practiced software lifecycle management to ensure issues were fixed in production.
  - Wrote root-cause analyses of incidents and coordinated issue mitigation and resolution.
- Went beyond job scope to #link("https://github.com/Azure/azure-sdk-for-rust/pull/67")[contribute] to the open source Rust SDK for Azure.

#v(3pt)

#experience-entry(
  title: [Software Engineer],
  date: [2018 - 2019],
  company: [MTEQ],
  location: [Lorton, VA],
)

- Integrated autonomous field sensors with a message protocol based on Protobufs and TLS.
- Created developer libraries for the protocol in C++, C\#, and Python.
- Authored a program to generate C++/C\#/Python classes from message definitions in XML.
