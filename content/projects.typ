#let meta = toml("../info.toml")
#import "../lib.typ": experience-entry, language-entry
#import meta.import.fontawesome: *

#let icon = meta.section.icon.projects
#let include-icon = meta.personal.include_icons

= #if include-icon [#fa-icon(icon) #h(5pt)] Projects

#show link: underline

#v(3pt)

#language-entry(
  language: [#link("https://fridgepoem.com/?contentWarning")[Fridge Poem] (#link("https://github.com/swlody/fridge-poetry")[code])],
  proficiency: [2025],
)

Website with a globally shared canvas that allows users to anonymously collaborate and create poetry using a predefined set of "fridge poetry magnets". Thoughtfully and meticulously designed to evoke the real-life experience. Custom TypeScript frontend which communicates with Rust backend via WebSockets and MessagePack. Postgres database utilizing a GiST index for bounding box queries and `LISTEN/NOTIFY` for broadcasting changes.
