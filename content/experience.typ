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
  title: [Software Engineer],
  date: [2025 - ],
  company: [GiveCampus],
  location: [Remote],
)

#v(3pt)

#experience-entry(
  title: [Programming Retreat Participant],
  date: [2024],
  company: link("https://recurse.com")[Recurse Center],
  location: [Brooklyn, NY],
)

- Gained depth and breadth of knowledge of web technologies and infrastructure.
  - Built horizontally and vertically scalable backend services.
  - Implemented authentication, logging, configuration, metrics and monitoring.
  - CI/CD with extensive testing and cloud native hosting of Docker containers.
- And #link("https://swlody.dev/recurse")[many other things]! (Also see projects below)

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
  // This can be reworded
  - Integrated with existing backend storage APIs, monitoring infrastructure, QA, and testing.
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
