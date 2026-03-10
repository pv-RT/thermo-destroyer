#import "settings.typ": *

#let destroyer_layout(document) = context {
  set page(
    paper: "a4",
    flipped: true, // horizontal Layout
    margin: PAGE_MARGIN,
    columns: 4,
    footer: if ENABLE_FOOTER {align(center)[https://github.com/pv-RT/thermo-destroyer]}
  )

  set columns(
    gutter: COLUMN_GUTTER,
  )

  set text(
    font: "Latin Modern Sans",
    size: FONT_SIZE,
  )

  if KIT_PRINT_MODE {
    set page(
      margin: 5mm
    )
    
    set text(
      size: 2.26mm
    )
    document
  } else {
    document
  }
}