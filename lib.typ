#let meta = toml("info.toml")
#import meta.import.fontawesome: *


#let section-title-style(str, color) = {
  text(
    size: 12pt,
    weight: "bold",
    fill: rgb(color),
    str,
  )
}

#let name-block(
  header-name,
  color,
) = {
  text(
    fill: rgb(color),
    size: 26pt,
    weight: "extrabold",
    header-name,
  )
}

#let title-block(
  title,
  color,
) = {
  text(
    size: 12pt,
    style: "italic",
    fill: rgb(color),
    title,
  )
}

#let info-block-style(
  icon,
  txt,
  color,
  include-icons,
) = {
  text(
    size: 10pt,
    fill: rgb(color),
    weight: "medium",
    if include-icons {
      fa-icon(icon) + h(10pt) + txt
    } else {
      txt
    },
  )
}

#let info-value(val) = {
  if type(val) == str {
    val
  } else if type(val) == dictionary {
    link(val.link, val.label)
  }
}

#let info-block(
  metadata,
) = {
  let info = metadata.personal.info
  let icons = metadata.personal.icon
  let color = metadata.layout.text.color.medium
  let include-icons = metadata.personal.include_icons
  table(
    columns: 1fr,
    stroke: none,
    ..info.pairs().map(((key, val)) => info-block-style(icons.at(key), info-value(val), color, include-icons))
  )
}

#let make-info-table(
  metadata,
) = {
  let color = metadata.layout.text.color.medium
  let info = metadata.personal.info
  let icons = metadata.personal.icon
  let include-icons = metadata.personal.include_icons
  table(
    columns: 1fr,
    align: right,
    stroke: none,
    ..info.pairs().map(((key, val)) => info-block-style(icons.at(key), info-value(val), color, include-icons))
  )
}

#let name-table(
  metadata,
) = {
  let lang = metadata.personal.language
  let subtitle = metadata.language.at(lang).at("subtitle")
  table(
    columns: 1fr,
    inset: 0pt,
    stroke: none,
    row-gutter: 4mm,
    [#name-block(metadata.personal.first_name + " " + metadata.personal.last_name, metadata.layout.text.color.dark)],
    [#title-block(
        subtitle,
        metadata.layout.text.color.dark,
      )],
  )
}

#let cover-header-table(
  metadata,
) = {
  let lang = metadata.personal.language
  let subtitle = metadata.language.at(lang).at("subtitle")
  table(
    columns: 1fr,
    inset: 0pt,
    stroke: none,
    row-gutter: 4mm,
    [#name-block(metadata.personal.first_name + " " + metadata.personal.last_name, metadata.layout.text.color.dark)],
    [#title-block(
        subtitle,
        metadata.layout.text.color.dark,
      )],
  )
}

#let make-header-photo(
  photo,
  profile-photo,
) = {
  if profile-photo != false {
    box(
      clip: true,
      radius: 50%,
      photo,
    )
  } else {
    box(
      clip: true,
      stroke: 5pt + yellow,
      radius: 50%,
      fill: yellow,
    )
  }
}

#let cv-header(left-comp, cols, align) = {
  table(
    columns: cols,
    inset: 0pt,
    stroke: none,
    column-gutter: 10pt,
    align: top,
    {
      left-comp
    }
  )
}

#let cv-section(title) = {
  section-title-style(title)
  h(4pt)
}

#let date-style(date) = (
  table.cell(
    align: right,
    text(
      size: 9pt,
      weight: "bold",
      style: "italic",
      date,
    ),
  )
)

#let company-name-style(company) = {
  table.cell(
    align: right,
    text(
      size: 9pt,
      weight: "bold",
      style: "italic",
      company,
    ),
  )
}

#let degree-style(degree) = (
  text(
    weight: "bold",
    degree,
  )
)

#let reference-name-style(name) = (
  text(
    weight: "bold",
    name,
  )
)

#let phonenumber-style(phone) = (
  text(
    size: 9pt,
    style: "italic",
    weight: "medium",
    phone,
  )
)

#let institution-style(institution) = (
  table.cell(
    text(
      style: "italic",
      weight: "medium",
      institution,
    ),
  )
)

#let location-style(location) = (
  table.cell(
    text(
      style: "italic",
      weight: "medium",
      location,
    ),
  )
)

#let email-style(email) = (
  text(
    size: 9pt,
    style: "italic",
    weight: "medium",
    email,
  )
)

#let tag-style(str) = {
  align(
    right,
    text(
      weight: "regular",
      str,
    ),
  )
}

#let tag-list-style(color, tags) = {
  for tag in tags {
    box(
      inset: (x: 0.4em),
      outset: (y: 0.3em),
      fill: rgb(color),
      radius: 3pt,
      tag-style(tag),
    )
    h(5pt)
  }
}

#let profile-entry(str) = {
  text(
    size: text-size,
    weight: "medium",
    str,
  )
}

#let reference-entry(
  name: "Name",
  title: "Title",
  company: "Company",
  telephone: "Telephone",
  email: "Email",
) = {
  table(
    columns: (3fr, 2fr),
    inset: 0pt,
    stroke: none,
    row-gutter: 3mm,
    [#reference-name-style(name)],
    [#company-name-style(company)],
    table.cell(colspan: 2)[#phonenumber-style(telephone), #email-style(email)],
  )
  v(2pt)
}

#let education-entry(
  degree: "Degree",
  date: "Date",
  institution: "Institution",
  location: "Location",
  description: "",
  highlights: (),
) = {
  table(
    columns: (2fr, 1fr),
    inset: 0pt,
    stroke: none,
    row-gutter: 3mm,
    [#institution-style(institution)\
      #location-style(location)],
    [#date-style(date)],
  )
  [#degree-style(degree)]
}

#let experience-entry(
  title: "Title",
  date: "Date",
  company: "Company",
  location: "Location",
) = {
  table(
    columns: (1fr, 1fr),
    inset: 0pt,
    stroke: none,
    row-gutter: 3mm,
    [#degree-style(title)],
    [#date-style(date)],
    table.cell(colspan: 2)[#institution-style(company), #location-style(location)],
  )
}

#let skill-style(skill) = {
  text(
    weight: "bold",
    skill,
  )
}

#let skill-tag(color, skill) = {
  box(
    inset: (x: 0.3em),
    outset: (y: 0.2em),
    fill: rgb(color),
    radius: 3pt,
    skill-style(skill),
  )
}

#let skill-entry(
  color,
  cols,
  align,
  skills: (),
) = {
  table(
    columns: if cols == true { (1fr, 1fr) } else { 1fr },
    inset: 0pt,
    stroke: none,
    row-gutter: 3mm,
    column-gutter: 3mm,
    align: align,
    ..skills.map(sk => skill-tag(color, sk))
  )
}

#let language-entry(
  language: "Language",
  proficiency: "Proficiency",
) = {
  table(
    columns: (1fr, 1fr),
    inset: 0pt,
    stroke: none,
    row-gutter: 3mm,
    align: left,
    table.cell(
      text(
        weight: "bold",
        language,
      ),
    ),
    table.cell(
      align: right,
      text(
        weight: "medium",
        proficiency,
      ),
    )
  )
}

#let recipient-style(str) = {
  text(
    style: "italic",
    str,
  )
}

#let recipient-entry(
  name: "Name",
  title: "Title",
  company: "Company",
  address: "Address",
  city: "City",
) = {
  table(
    columns: 1fr,
    inset: 0pt,
    stroke: none,
    row-gutter: 3mm,
    align: left,
    recipient-style(name),
    recipient-style(title),
    recipient-style(company),
    recipient-style(address),
  )
}

#let cv(
  metadata,
  photo: "",
  use-photo: false,
  left-pane: (),
  right-pane: (),
  left-pane-proportion: 71%,
  doc,
) = {
  set text(
    fill: rgb(metadata.layout.text.color.dark),
    font: metadata.layout.text.font,
    size: eval(metadata.layout.text.size),
  )
  set align(left)
  set page(
    fill: rgb(metadata.layout.fill_color),
    paper: metadata.layout.paper_size,
    margin: (
      left: 1.2cm,
      right: 1.2cm,
      top: 1.6cm,
      bottom: 1.2cm,
    ),
  )
  set list(marker: [‣])
  grid(
    columns: (left-pane-proportion, 96% - left-pane-proportion),
    column-gutter: 20pt,
    stack(
      spacing: 20pt,
      cv-header(
        name-table(metadata),
        auto,
        left,
      ),
      left-pane,
    ),
    stack(
      spacing: 20pt,
      right-pane,
    ),
  )
  doc
}

#let cover-letter(
  metadata,
  doc,
) = {
  set text(
    fill: rgb(metadata.layout.text.color.dark),
    font: metadata.layout.text.font,
    size: eval(metadata.layout.text.size),
  )
  set align(left)
  set page(
    fill: rgb(metadata.layout.fill_color),
    paper: metadata.layout.paper_size,
    margin: (
      left: 1.2cm,
      right: 1.2cm,
      top: 1.6cm,
      bottom: 1.2cm,
    ),
  )
  set list(marker: [‣])
  cv-header(
    cover-header-table(metadata),
    make-info-table(metadata),
    (65%, 34%),
    left,
  )
  doc
}
