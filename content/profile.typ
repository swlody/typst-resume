#let meta = toml("../info.toml")
#import meta.import.fontawesome: *

#let icon = meta.section.icon.profile
#let include-icon = meta.personal.include_icons

// = Summary
= #if include-icon [#fa-icon(icon) #h(5pt)] Summary

#v(5pt)

Full Stack Software Engineer with depth in backend systems, distributed infrastructure, and API design. Has shipped production software in C++, Rust, Ruby, and TypeScript across cloud, finance, and SaaS.
