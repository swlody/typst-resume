#let meta = toml("info.toml")

#import "lib.typ": cv
// #let photo = image("./img/" + meta.personal.profile_image)

#let import-sections(
  sections,
) = {
  for section in sections {
    include {
      "content/" + section + ".typ"
    }
  }
}

#let left-pane = (
  "profile",
  "experience",
  "education",
)

#let right-pane = (
  "info",
  "skills",
)

#show: cv.with(
  meta,
  use-photo: false,
  left-pane: import-sections(left-pane),
  right-pane: import-sections(right-pane),
  left-pane-proportion: eval(meta.layout.left_pane_width),
)
