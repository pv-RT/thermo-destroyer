#include "template/settings.typ"
#import "template/setup.typ": *
#import "template/template.typ": *
#import "common.typ": *

#show: destroyer_layout

// #header(
//   image("res/itt_logo.png"),
//   [Thermo I/II - Destroyer \ KIT / Maschinenbau | SPO 2023]
// )

#let SHOW_EASY_STUFF = true

== Thermo I Destroyer KIT SPO 2023
#v(.5em)

#thermo_basics

#section("Verständnis")[
  #sectionBlockTitle("Größen und Einheiten")
  #h(1fr) #mark(color: orange, "Extensive Zustandsgrößen") #h(2fr)
  #mark(color: yellow, "Intensive Zustandsgrößen") #h(1fr) \
  #h(1fr) #mark(color: green, "Wegabhängige Prozessgrößen") #h(2fr)
  #bmark(color: blue, "Erhaltungsgrößen") #h(1fr)

  #mark(color: yellow)[Druck p]: Pa, bar, atm, $N / m^2 = ("kg" dot m) / (m^2 dot s^2) = "kg" / (m dot s^2)$ \
  #mark(color: green)[Arbeit W]: $J = ("kg" dot m^2) / s^2$ #h(1em)
  #mark(color: yellow)[Temperatur T]: K #h(1em)
  #bmark(color: blue, mark(color: orange)[Masse m]): kg #h(1em) \ 
  #bmark(color: blue, dashed: true, mark(color: orange)[Volumen V]): $m^3$ #h(1em)
  Stoffmenge n: mol #h(1em)
  #mark(color: orange)[Innere Energie U]: $J = ("kg" dot m^2) / s^2$ \
  Molmasse M: $"kg" / "mol"$ #h(1em)
  Molare Gaskonstante #math.dash("R"): $J / ("mol" dot K) = ("kg" dot m^2) / (s^2 dot "mol" dot K)$ \
  #mark(color: green)[Wärmestrom #math.dot("Q")]: Watt, $W = J / s = ("kg" dot m^2) / (s^3)$ #h(1em)
  Massenstrom #math.dot("m"): $"kg" / s$ \
  Partielle Ableitung $((partial T) / (partial s))_v$: $(K^2 dot s^2) / m^2$ #h(1em)
  Molenbruch $gamma$: _Einheitslos_ \
  spez. Volumen v: $m^3 / "kg"$ #h(1em)
  #bmark(color: blue)[spez. Enthalpie h]: $J / "kg" = m^2 / s^2$ \
  #mark(color: orange)[spez. Entropie s]: $J / (K dot "kg")$ #h(1em)
  molare Wärmekapazität $dash(C)_p$: $J / ("mol" dot K)$
  #v(.2em)
]

// #pagebreak()
// #set page(columns: 5)

#section("Diagramme")[
  #sectionBlockTitle("Einphasig")
  #v(.1em, weak: true)
  // #grid(
  //   columns: (1fr, 1fr),
  //   image("res/diagrams/ts.png"),
  //   image("res/diagrams/pv.svg"),
  // )
  #imagetwins(
    image("res/diagrams/pv.svg"),
    image("res/diagrams/ts.png"),
  )
][
  #sectionBlockTitle("Nassdampf")
  #v(.4em, weak: true)
  // #grid(
  //   align: center,
  //   columns: (1fr, 1fr),
  //   image("res/diagrams/pv-nd.png"),
  //   image("res/diagrams/ts-nd.png"),
  //   image("res/diagrams/ph-nd.png"),
  //   image("res/diagrams/hs-nd.png")
  // )
  #imagetwins(
    image("res/diagrams/pv-nd.png"),
    image("res/diagrams/ts-nd.png"),
  )
  #v(.2em, weak: true)
  #imagetwins(
    image("res/diagrams/ph-nd.png"),
    image("res/diagrams/hs-nd.png")
  )
][
  #sectionBlockTitle("Wasser vs Normalstoff")
  #v(.4em, weak: true)
  // #grid(
  //   align: center,
  //   columns: (1fr, 1fr),
  //   image("res/diagrams/pv-nw.png"),
  //   image("res/diagrams/pt-nw.png"),
  //   image("res/diagrams/Ts-nw.png"),
  //   image("res/diagrams/3d-nw.png")
  // )

  #imagetwins(
    image("res/diagrams/pv-nw.png"),
    image("res/diagrams/pt-nw.png"),
  )
  #v(.2em, weak: true)
  #imagetwins(
    image("res/diagrams/Ts-nw.png"),
    image("res/diagrams/3d-nw.png"),
  )
]

#section("Maschinenprozesse")[
  #sectionBlockTitle("Stirling Motor")
  #v(.4em, weak: true)
  // #grid(
  //   columns: (1000fr, 844fr),
  //   image("res/diagrams/stirling-Ts.png"),
  //   image("res/diagrams/stirling-pV.png"),
  // )
  #imagetwins(
    image("res/diagrams/stirling-Ts.png"),
    image("res/diagrams/stirling-pV.png"),
  )
  #v(.5em, weak: true)
  Annahme: Interne isochore Wärmezu- und abgabe \
  $eta_(italic("th"),italic("St")) = eta_(italic("th"), italic("C")) = 1 - T_0 / T_1$ \
  $epsilon_(italic("KM"), italic("St")) = T_0 / (T_1 - T_0); quad epsilon_(italic("WP"), italic("St")) = T_1 / (T_1 - T_0)$
  #v(.2em)
][
  #sectionBlockTitle("Otto-Motor (Gleichraumprozess)")
  #v(.4em, weak: true)
  // #grid(
  //   columns: (1fr, 1fr),
  //   image("res/diagrams/otto-pv.png"),
  //   image("res/diagrams/otto-Ts.png"),
  // )
  #imagetwins(
    image("res/diagrams/otto-pv.png", height: 10.5em),
    image("res/diagrams/otto-Ts.png", height: 10.5em),
  )
  #v(.5em, weak: true)
  $eta_(italic("th"), italic("O")) = (q_23 - abs(q_41)) / q_23 "mit isochor:" space dif u = c_v dif T = T dif s = delta q_italic("rev")$ \
  #v(.6em, weak: true)
  #scale(x: 97%, reflow: true, $eta_(italic("th"), italic("O")) = 1 - (T_4 - T_1) / (T_3 - T_2) = 1 - frac(T_1 (T_4 / T_1 - 1), T_2 (T_3 / T_2 - 1)) =^* 1 - T_1 / T_2 = 1 - (v_1 / v_2)^(1 - kappa)$)
  #v(.3em, weak: true)
  Herleitung \*:\
  1 #math.arrow 2 isentrop: $T_1 v_1^(kappa - 1) = T_2 v_2^(kappa - 1) wide (I)$\
  3 #math.arrow 4 isentrop: $T_3 v_3^(kappa - 1) = T_4 v_4^(kappa -1) <-> T_3 v_1^(kappa -1) = T_4 v_2^(kappa - 1)$ \
  #v(.8em, weak: true)
  $frac(3->4, 1->2) = T_4 / T_1 = T_3 / T_2 "bzw. aus" (I)":" quad T_1 / T_2 = (v_2 / v_1)^(kappa - 1) = (v_1 / v_2)^(1 - kappa)$
  #v(.25em)
][
  #sectionBlockTitle("Carnot Prozess")
  #v(.2em, weak: true)
  #imagetwins(
    [
      #image("res/diagrams/carnot-pv.png", height: 10em)
      #place(
        top + right,
        scale(50%, origin: top + right, image("res/diagrams/carnot-Ts-flächen.png"))
      )
    ],
    image("res/diagrams/carnot-Ts.png", height: 10em),
  )
  #v(.5em, weak: true)
  $eta = "Nutzen"/"Aufwand"$
  $eta_("th","WKM") = W_"ab" / Q_"zu" = frac(Q_"zu" - abs(Q_"ab"), Q_"zu") = 1 - T_"ab" / T_"zu"$ \
  #v(1.2em, weak: true)
  $epsilon_"KM" = frac(T_"zu", T_"ab" - T_"zu"); space epsilon_"WP" = frac(T_"ab", T_"ab" - T_"zu")$
  #v(.2em)
][
  #sectionBlockTitle("Dieselmotor (Gleichdruckprozess)")
  #v(.4em, weak: true)
  // #grid(
  //   columns: (1000fr, 890fr),
  //   image("res/diagrams/diesel-pv.png"),
  //   image("res/diagrams/diesel-Ts.png"),
  // )
  #imagetwins(
    image("res/diagrams/diesel-pv.png", height: 9.5em),
    image("res/diagrams/diesel-Ts.png", height: 9.5em),
  )
  #v(.5em, weak: true)
  $eta_(italic("th"), "D") = (q_23 - abs(q_41)) / q_23 = 1 - c_v / c_p  (T_4 - T_1) / (T_3 - T_2)$ \
  $q_23 "isobar:" space dif h = T dif s = delta q_italic("rev") "mit perf. Gas" q = c_p Delta T$ \
  $abs(q_41) "isochor:" space dif u = T dif s = q_italic("rev") -> q = c_v Delta T$
][
  #sectionBlockTitle("Seiliger Prozess")
  #v(.4em, weak: true)
  // #grid(
  //   columns: (968fr, 1000fr),
  //   image("res/diagrams/seiliger-pv.png"),
  //   image("res/diagrams/seiliger-Ts.png"),
  // )
  #imagetwins(
    image("res/diagrams/seiliger-pv.png", height: 10.5em),
    image("res/diagrams/seiliger-Ts.png", height: 10.5em),
  )
  #{
    set math.equation(block: true)
    $eta_(italic("th"), S) &= 1 - frac(c_v (T_5 - T_1), c_v (T_3 - T_2) + c_p (T_4 - T_3))wide "mit" epsilon = v_1 / v_2; phi = v_4 / v_2 \
    &= 1 - frac(epsilon (p_5 - p_1) 1 / p_3, (1 - 1 / psi) + kappa (phi - 1)) = 1 - epsilon^(1 - kappa) dot frac(psi phi^kappa - 1, psi - 1 + psi kappa (phi - 1))$
  }
][
  #sectionBlockTitle("Gasturbine (Joule Prozess)")
  #v(.3em, weak: true)
  #imagetwins(
    image("res/diagrams/joule-pv.png"),
    image("res/diagrams/joule-Ts.png"),
  )
  #v(.3em, weak: true)
  $eta_(italic("th"), italic("GT")) = 1 - abs(q_41) / q_23 = 1 - (T_4 - T_1) / (T_3 - T_2) = 1 - frac(T_1 (T_4 / T_1 - 1), T_2 (T_3 / T_2 - 1))$ \
  Herleitung wie bei Otto: $T_4 / T_1 = T_3 / T_2$ und $T_1 / T_2 = (p_2 / p_1)^frac(1 - kappa, kappa)$ \

  $-> eta_(italic("th"), italic("GT")) = 1 - T_1 / T_2 = 1 - (p_1 / p_2)^frac(kappa - 1, kappa) = 1 - (p_4 / p_3)^frac(kappa - 1, kappa)$
  #v(.2em)
][
  #sectionBlockTitle("Kaltdampfmaschinen")
  #v(.3em, weak: true)
  #imagetwins(
    image("res/diagrams/kaltdampf-maschine-Ts.png", height: 8.5em),
    image("res/diagrams/kaltdampf-maschine-pv.png", height: 8.5em),
  )
  #v(0em, weak: true)
  #imagetwins(
    image("res/diagrams/kaltdampf-maschine-hs.png", height: 8em),
    image("res/diagrams/kaltdampf-maschine-ph.png", height: 8em),
  )
  #v(.3em, weak: true)
  Drossel: isenthalp \
  $epsilon_"KM" = q_41 / w_12 = frac(h_1 - h_4, h_2 - h_1)$ und $epsilon_"WP" = abs(q_23) / w_12 = frac(h_2 - h_3, h_2 - h_1)$
  #v(.2em)
][
  #sectionBlockTitle("Irreversible Prozesse")
  #v(.3em, weak: true)
  #imagetwins(
    [
      #image("res/diagrams/clausius-rankine-irr.png")
      #place(scale("Clausius-Rankine", 90%), top + left, dx: .5em, dy: .5em)
    ],
    [
      #image("res/diagrams/kaltdampf-maschine-irr.png")
      #place(scale("Kaltdampfmaschine", 90%), top + left, dx: .5em, dy: .5em)
    ]
  )
]

#section("Bauteile")[
  #set align(center)
  #image("res/diagrams/bauteile.png", height: 28.6em)
]

#section("Clausius-Rankine und GuD")[
  #sectionBlockTitle("Clausius-Rankine")
  #v(.1em, weak: true)
  #align(center, image("res/diagrams/clausius-rankine-float-chart.png", width: 23em))
  #v(0em, weak: true)
  #imagetwins(
    image("res/diagrams/clausius-rankine-Ts.png"),
    image("res/diagrams/clausius-rankine-pv.png"),

  )
  #v(0em, weak: true)
  #imagetwins(
    image("res/diagrams/clausius-rankine-ph.png"),
    image("res/diagrams/clausius-rankine-hs.png"),

  )
  #v(0em, weak: true)
  #imagetwins(
    image("res/diagrams/clausius-rankine-rev-irrev.png"),
    image("res/diagrams/clausius-rankine-zw.png"),
  )
  #v(.3em, weak: true)
  Wirkungsgrad: \
  #v(.9em, weak: true)
  $eta_(italic("th"), italic("CR")) = frac(abs(W_italic("Tu")) - W_italic("KSP"), Q_italic("zu")) = frac((H_5 - H_6) - (H_2 - H_1), H_5 - H_2) approx frac(H_5 - H_6, H_2 - H_1)$ \
  da $Delta h = integral v dif p$ für KSP und $T_u$ mit $v_italic("fl") << v_italic("gas")$
  #v(.2em)
][
  #sectionBlockTitle("GuD-Prozess")
  #v(.1em, weak: true)
  #grid(
    columns: (90fr, 74fr),
    image("res/diagrams/GuD-Ts.png", height: 24em),
    [
      #image("res/diagrams/GuD-Th.png")
      #v(.3em, weak: true)
      #box(inset: .3em)[
        #set align(center)
        Enthalpien der Gegenstromübertragung:
        $dif H_G = dif H_D$
        $dot(m)_G dif h_G = dot(m)_D dif h_D$
        $dif h_G = dot(m)_D / dot(m)_G dif h_D$
        
        $->frac(dif T_G, dif h_D) = frac(dot(m)_D, dot(m)_G c_(p,G))$
      ]
    ]
  )

  T,h - Diagramm: \
  Isobare:
  $dif h = c_p dif T -> (frac(partial T, partial h))_p = 1 / c_p$ \
  #v(1.1em, weak: true)
  Isentrope:
  $dif h = c_p dif T + (frac(partial h, partial p))_T dif p | dot (frac(1, partial h))_s$

  $-> 1 = c_p (frac(partial T, partial h))_s + (frac(partial h, partial p))_T (frac(partial p, partial h)_s)$
  $limits(->)^"ideales Gas" (frac(partial T, partial h))_s = 1 / c_p$

  Wirkungsgrad:

  #scale(92%, reflow: true, $eta_italic("GuD") &= frac(dot(m)_"Gas" [(h_c - h_d) - (h_b - h_a)] + dot(m)_"D" [(h_5 - h_6) - (h_2 - h_1)], dot(m)_"Gas" (h_c - h_b)) = eta_(italic("th"), italic("GT")) + dot(m)_"D" / dot(m)_"Gas" frac((h_5 - h_6) - (h_2 - h_1), h_c - h_b) \
  &= eta_(italic("th"), italic("GT")) + (1 - eta_(italic("th"), italic("GT"))) eta_(italic("th"), "DT")$)
]

// #section("Bauteile")[
//   #scale(70%, reflow: true, table(
//     inset: .4em,
//     align: horizon + center,
//     columns: (4fr, 5fr, 2fr, 2fr, 2fr, 7fr),
//     [Name], [Symbol], [$Delta p$], [$Delta c$], [$dot(W)$], [Bemerkung],
//     [Düse],[],[$< 0$], [$> 0$], [$= 0$], [Durchströmt von links nach rechts],
//     [Diffusor],[],[$> 0$], [$< 0$], [$= 0$], [Durchströmt von links nach rechts],
//     [Drossel],[], [$< 0$], [$(> 0)$], [$= 0$], [$Delta h = 0$ wenn adiabat],
//     [Vorwärmer], [], [$= 0$], [$= 0$], [$= 0$], [Medium: flüssig \ $dot(Q) > 0$],
//     [Verdampfer], [], [$= 0$], [$= 0$], [$= 0$], [Medium: \ flüssig #math.arrow gasförmig \ $dot(Q) > 0$],
//     [Überhitzer], [], [$= 0$], [$= 0$], [$= 0$], [Medium: gasförmig \ $dot(Q) > 0$],
//     [Pumpe], [], [$> 0$], [$= 0$], [$> 0$], [Medium: flüssig],
//     [Turbine], [], [$< 0$], [$(< 0)$], [$< 0$], [$Delta c$ i.d.R. vernachlässigbar \ Durchströmt von oben nach unten],
//     [(Turbo-) Kompressor], [], [$> 0$], [$(> 0)$], [$> 0$], [Medium: gasförmig \ $Delta c space$ i.d.R. vernachlässigbar Durchströmt von oben nach unten],
//     [Kondensator], [], [$= 0$], [$= 0$], [$= 0$], [Medium: \ gasförmig #math.arrow flüssig $dot(Q) < 0$],
//   ))
// ]

#section("Schallgeschwindigkeit und Düsenströmung")[
  #sectionBlockTitle("Schallgeschwindigkeit")
  Massenerhaltung: $dot(m) = A c rho = italic("konst") wide "mit" A = italic("konst")$ \
  $-> dif (c rho) = c dif rho + rho dif c = 0 <-> rho dif c 0 - c dif rho$ \
  Euler ($dif z = 0$): $0 = dif p + rho c dif c -> dif p - c^2 dif rho = 0$ \
  #v(.8em, weak: true)
  Damit: $c^* = sqrt((frac(partial p, dif rho))_s)$ \
  $"Mit" dif h = c_p dif T = T dif s + v dif p "und" p = (R T) / v quad (dif s = 0)$ \
  #v(.8em, weak: true)
  $-> c_p (v / R dif p - (p v^2)/R dif rho) = v dif p$
  $<-> (frac(partial p, partial rho))_s = kappa R T$
  #v(.3em)
][
  #sectionBlockTitle("Düsenströmung")
  #v(.5em, weak: true)
  #scale(98%, reflow: true, [Massenerhaltung: $dot(m) = A c rho = italic("konst")$
  $-> (dif A) / A + (dif c) / c + (dif rho) / rho = 0$])
  #v(.8em, weak: true)
  Schallgeschwindigkeit: $(c^*)^2 = (frac(partial p, partial rho))_s <-> dif p = (c^2)^* dif rho$ \
  #v(1.05em, weak: true)
  Euler ($dif z = 0$): $0 = dif p + rho c dif c -> (dif rho) / rho = - M a^2 (dif c) / c$ \
  #v(.7em, weak: true)
  #math.arrow in Massenerhaltung: $(dif c) / c = frac(1, M a ^2 - 1) (dif A) / A wide (M a = c / c^*)$
  #v(.2em)
]

#flasche

#section("hx+1 - Diagramm")[
  #image("res/diagrams/hx+1.png", width: 30em)
][
  #sectionBlockTitle("Erwärmung / Kühlung bei konstantem Feuchtegrad")
  #v(.4em, weak: true)
  #grid(
    columns: (1fr, 1fr),
    [
      #image("res/diagrams/erwärmung-kühlung-proz.png")
      #v(.2em, weak: true)
      Feuchtegrad $x = italic("konst")$ \
      #scale(90%, reflow: true)[Erwärmung: relative Feuchte nimmt ab] \
    ],
    image("res/diagrams/erwährmung-kühlung-hxx.png"),
  )
  #v(-1em, weak: true)
  #scale(90%, reflow: true)[Kühlung: relative Feuchte nimmt zu]
][
  #sectionBlockTitle("Adiabate Befeuchtung")
  #v(.3em, weak: true)
  #grid(
    columns: (1fr, 1fr),
    [
      #image("res/diagrams/adiabate-befeuchtung-proz.png")
      #v(.7em, weak: true)
      #h(1em) $arrow.t x wide h = italic("konst")$
    ],
    image("res/diagrams/adiabate-befeuchtung-hxx.png")
  )
][
  #sectionBlockTitle("Adiabate Mischung")
  #v(.3em, weak: true)
  #grid(
    columns: (1fr, 1fr),
    [
      #image("res/diagrams/adiabte-mischung-proz.png")
      #v(.3em, weak: true)
      #scale(92%, reflow: true, $dot(m)_1 (x_M - x_1) = dot(m)_2 (x_M - x_2)$)
      #v(.9em, weak: true)
      #scale(92%, reflow: true, $m_1 (h_(1+x, M) - h_(1+x, 1)) = m_2 (h_(1+x, M) - h_(1+x, 2))$)
    ],
    image("res/diagrams/adiabate-mischung-hxx.png")
  )
][
  #sectionBlockTitle("Entfeuchtung")
  #v(.3em, weak: true)
  #grid(
    columns: (1fr, 1fr),
    [
      #image("res/diagrams/entfeuchtung-proz.png")
      #v(1.5em, weak: true)
      #h(.5em) 1. $x = italic("konst")$ \
      #h(.5em) 2. $phi = 1 = italic("konst"); quad arrow.b t$ \
    ],
    image("res/diagrams/entfeuchtung-hxx.png")
  )
]
