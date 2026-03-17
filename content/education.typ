#let meta = toml("../info.toml")

#import "../lib.typ": education-entry, experience-entry
#import meta.import.fontawesome: *

#let icon = meta.section.icon.education
#let include-icon = meta.personal.include_icons

= #if include-icon [#fa-icon(icon) #h(5pt)] Education

#v(5pt)

#education-entry(
  degree: [
    - B.S. Computer Science
    - B.A. Physics
  ],
  date: [2014 - 2018],
  institution: [University of Rochester],
  location: [Rochester, NY],
)

#experience-entry(
  date: [2024],
  title: link("https://recurse.com")[Recurse Center],
  company: [Programming Retreat Participant],
  location: [Brooklyn, NY],
)

// - Gained depth and breadth of knowledge of web technologies and infrastructure.
//   - Built horizontally and vertically scalable backend services.
//   - Implemented authentication, logging, configuration, metrics and monitoring.
//   - CI/CD with extensive testing and cloud native hosting of Docker containers.
// - And #link("https://swlody.dev/recurse")[many other things]! (Also see projects below)
