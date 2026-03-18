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
- Led a rework of a service that displays personalized information on donation forms based on the intended recipient. Implemented form autofill logic, controller integration, email pipeline, and admin UI components.
- Spearheaded a public API initiative, prototyping RESTful endpoints to enable AI-assisted rapid development of custom frontend pages.
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
- Owned features through the full development lifecycle from implementation and testing through deployment and verification.
- Mentored new hires through an on-boarding exercise to implement a simple trading model.

#v(3pt)

#experience-entry(
  title: [Software Engineer II],
  date: [2019 - 2022],
  company: [Microsoft],
  location: [Reston, VA],
)

- Collaboratively implemented an asynchronous and multi-threaded SFTP server in C++.
  - Integrated with existing backend storage APIs and monitoring infrastructure; contributed to QA and end-to-end testing.
  - Co-led sprint planning and participated in code reviews.
- Rotated as directly responsible engineer (DRE) for the API team's on-call shifts.
  - Troubleshooted and resolved issues across the global surface of the cloud storage API.
  - Navigated every layer of the storage stack from public-facing SDKs and APIs down to the distributed filesystem.
  - Dug deeply into unfamiliar system layers to quickly remediate customer issues.
  - Coordinated cross-team incident responses.
  - Wrote root-cause analyses of incidents and coordinated issue mitigation and resolution.
- Contributed outside official responsibilities to the open source Rust SDK for Azure.

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
