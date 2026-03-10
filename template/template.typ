#import "settings.typ": *

#let header(logo, body) = {
  set text(
    size: 1.1em,
    weight: "bold",
  )

  let right = box(
    inset: HEADER_INSET,
    text(
      body,
      size: 1.4em,
      weight: "bold",
    ),
  )

  if ENABLE_HEADER {
    block(
      spacing: HEADER_SPACING,
      context(
        grid(
          columns: 2,
          gutter: HEADER_SPACING * 2/5,
          box(
            height: measure(right).height,
            logo
          ),
          right
        )
      )
    )
  }
}

#let section(title, ..blocks) = block(
  width: 100%,
  spacing: SECTION_SPACING,
)[
  #let blocks_array = blocks.pos()

  #let makeBlock(b) = block(
    width: 100%,
    inset: BLOCK_INSET,
    spacing: BLOCK_SPACING,
    radius: BLOCK_BORDER_RADIUS,
    breakable: false,
    fill: BLOCK_FILL,
    stroke: stroke(
      thickness: .07em,
      paint: BLOCK_STROKE_PAINT,
    ),
    b
  )
  // The extra wrapping ensures that the heading is always directly above a section block
  #block(breakable: false)[
    #box(
      inset: (left: BLOCK_INSET),
      text(
        heading(
          title,
          level: 1,
          outlined: false,
          numbering: "1.",
        ),
        fill: SECTION_HEADING_FILL,
        size: SECTION_HEADING_FONT_SIZE,
        weight: "bold",
      )
    )
    #v(SECTION_HEADING_RISE, weak: true)
    #if blocks_array.len() > 0 {
      makeBlock(blocks_array.first())
    }
  ]

  #if blocks_array.len() > 0 {
    for b in blocks_array.slice(1) {
      makeBlock(b)
    }
  } else {
    makeBlock([])
  }
]

#let sectionBlockTitle(title) = {
  text(
    title,
    fill: BLOCK_HEADING_FILL,
    size: BLOCK_HEADING_FONT_SIZE,
    weight: "bold",
  )
  linebreak()
}

#let mark(color: green, body) = {
  highlight(
    body,
    fill: color.transparentize(MARK_FILL_TRANSPARENCY),
    radius: 50%,
    extent: .3em,
  )
}

#let bmark(color: red, dashed: false, body) = {
  highlight(
    body,
    fill: luma(100%).transparentize(100%),
    radius: BLOCK_BORDER_RADIUS,
    stroke: stroke(paint: color.transparentize(BMARK_STROKE_TRANSPARENCY), thickness: .1em, dash: if dashed {"dashed"}),
    top-edge: .9em,
    bottom-edge: -.3em,
    extent: .3em
  )
}

#let bfmark(color: green, body) = {
  highlight(
    body,
    fill: color.transparentize(BOXHIGHLIGHT_FILL_TRANSPARENCY),
    radius: BLOCK_BORDER_RADIUS,
    stroke: stroke(paint: color.transparentize(BOXHIGHLIGHT_STROKE_TRANSPARENCY), thickness: .1em),
    top-edge: .9em,
    bottom-edge: -.3em,
    extent: .3em
  )
}

#let lrmid(body) = {
   set math.lr(size: 1.5em)
   body
}

#let barred(body, block: true) = context {
  let lines = std.block({
    show math.equation: set align(start)
    math.equation(block: block, body)
  })
  let height = measure(lines).height
  h(.2em)
  math.stretch(math.bar.v, size: height + 1em)
  h(1em)
  lines
}

// #let imagetwins(..images) = context {
//   let imgs = images.pos()
//   let numImgs = imgs.len()
//   if not calc.rem(numImgs, 2) == 0 {
//     panic("imagetwins accenpts only a an even number of images")
//   }

//   let sized

//   for  i in range(numImgs, 2) {
//     let img1 = imgs[i]
//     let img2 = imgs[i+1]
//     let h1 = measure(img1, height: 20pt).height
//     let h2 = measure(img2, height: 20pt).height

//     let h = (h1 + h2) / 2
    
//     let w1 = measure(img1, height: h).width
//     let w2 = measure(img2, height: h).width
//   }

//   grid(
//     columns: (w1/(w1+w2)*1fr, w2/(w1+w2)*1fr),
//     img1,
//     img2,
//   )
// }

#let imagetwins(img1, img2) = context {
  let h1 = measure(img1, height: 20pt).height
  let h2 = measure(img2, height: 20pt).height

  let h = (h1 + h2) / 2
  
  let w1 = measure(img1, height: h).width
  let w2 = measure(img2, height: h).width

  grid(
    align: center,
    columns: (w1/(w1+w2)*1fr, w2/(w1+w2)*1fr),
    img1,
    img2,
  )
}

#let strike(color: red, content) = context{
  let mes = measure(content)
  let l = 0.5 * mes.width + mes.height * 1.3
  content
  place(
    left + bottom,
    dx: -(mes.width + l) / 2 ,
    dy: mes.height / 2 + 0.1 * l,
    line(angle: -30deg, stroke: stroke(paint: color, thickness: .7pt, cap: "round"), length: l)
  )
}
