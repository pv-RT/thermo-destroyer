#include "template/settings.typ"
#import "template/setup.typ": *
#import "template/template.typ": *
#import "common.typ": *

#show: destroyer_layout

#set document(
  title: "Thermo II Destroyer KIT SPO 2023",
  author: "pv-RT - https://github.com/pv-RT/thermo-destroyer",
  description: "Technische Thermodynamik und Wärmeübertragung II Formelsammung KIT SPO 2023",
  keywords: ("KIT", "TD2"),
)

== Thermo II Destroyer KIT SPO 2023
#v(.5em)

#thermo_basics

#section("Reale Gase")[
  #sectionBlockTitle("Viralgleichungen")
  technische Form: $p v = R T + B^*(T) p + C^*(T) p^2 + D^*(T) p^3 + ...$
  physikalische Form: $p v = R T underbrace((1 + B(T) rho + C(T) rho^2 + D(T) rho^3 + ...), Z)$ \
  #v(-.3em, weak: true)
  Realgasfaktor $Z eq.triple (p v)/(R T)$
  #v(.2em)
][
  #sectionBlockTitle("Modelle realer Gase")
  #v(.2em, weak: true)
  Van-der-Waals-Gleichung: #box(height: 1.2em)[$ lrmid((p + a / v^2) (v - b)) = R T $] \
  ideales Gas (Massenpunktgas ohne Anziehende WW): $a = b = 0$ \
  Massenpunktgas mit anziehender WW: $a = 0, space b != 0$ \
  Starrkugelgas ohne anziehende WW: $a != 0, space b = 0$ \
  Van-der-Waals-Gas: $a != 0, space b != 0$ #h(1em) und #h(1em)
  $(frac(partial u, partial v))_T = a / v^2 $ #h(1em)
  $(frac(partial p, partial T))_v = frac(R, v -b )$ \
  #v(.2em)
][
  #sectionBlockTitle("Joule-Thomson-Effekt")
  #v(-.2em, weak: true)
  $ "Differentiell:" quad mu eq.triple (frac(partial T, partial p))_h = - 1 / c_p (frac(partial h, partial p))_T wide "mit" dif h = 0 $
  #v(.5em, weak: true)
  $mu = 0$: für ideale Gase, kein Joule-Thomson-Effekt \
  $mu > 0$: Temperatur sinkt; $mu < 0$: Temperatur steigt
]

#section("Chemische Thermodynamik")[
  #sectionBlockTitle("Geschwindigkeitsverteilung von Teilchen")
  Maxwell-Verteilung über Betrag c der Geschwindigkeit: \
  #v(.8em, weak: true)
  $frac(dif n, n_italic("ges")) = 4 pi a^3 c^2 e^(-frac(c^2, 2 R T)) dif c wide "mit" a = 1/sqrt(2 pi R T)$ \
  Mittlere Geschwindigkeit mit $c^2 = c_x^2 + c_y^2 + c_z^2 space "und" space dif c = dif c_x dif c_y dif c_z $: \
  #v(.8em, weak: true)
  $dash(c) = integral_0^oo c 4 pi a^3 c^2 e^(-frac(c^2, 2 R T)) dif c = sqrt(frac(8 R T, pi))$ \
  Mittleres Quadrat der Geschwindigkeit: \
  #v(.6em, weak: true)
  $dash(c^2) = integral_0^oo c^2 4 pi a^3 c^2 e^(-frac(c^2, 2 R T)) dif c = 3 R T => sqrt(dash(c^2)) = sqrt(3 R T)$ \
  #v(.3em, weak: true)
  Wahrscheinlichste Geschwindigkeit: \
  $frac(dif n, dif c) = frac(dif, dif c)(4 pi c^2 a^3 e^(-frac(c^2, 2 R T))) = 0 wide => c_0 = sqrt(2 R T)$ \
  Schallgeschwindigkeit: $c^* = sqrt(kappa R T)$
][
  #sectionBlockTitle("Freiheitsgrade")
  #v(.5em, weak: true)
  #grid(columns: (40%, 60%),
    [
      Energie pro Freiheitsgrad: $epsilon = 1/2 k_B T$ \
      Gesamtenergie pro Molekül:
      $f eq.triple f_T + f_R + 2f_S$ \
      $epsilon = 1/2 f k_B T = dash(U)$ \

      $dash(C_p) = 1/2 (f + 2) dash(R)$ \
      $dash(C_v) = 1/2 f dash(R); quad kappa = (f + 2) / f$
    ],
    image("res/diagrams/freiheitsgrade.png")
  )
][
  #sectionBlockTitle("Vollständige Beschreibungen")
  Freie Energie: $F eq.triple U - T S$ #h(1em)
  Freie Enthalpie: $G eq.triple H - T S$ \
  $dif G = -S dif T + V dif p + sum mu_i dif N_i$ #h(1em)
  $dif mu_i = - dash(S)_i dif T + dash(V)_i dif p$
  #v(.2em)
][
  #sectionBlockTitle("Energiebilanzen bei chemischen Reaktionen")
  $Delta_R H = sum nu_i dash(U_i)$ #h(1em) $Delta_R S = sum nu_i dash(S_i)$ #h(1em) $Delta_R G = sum nu_i dash(G_i)$ \
  #v(.8em, weak: true)
  $(frac(partial Delta_R H, partial T))_p = sum nu_i dash(C)_(p i)$ #h(1em) und #h(1em) $(frac(partial Delta_R U, partial T))_V = sum nu_i dash(C)_(v i)$
  #v(.8em, weak: true)
  Standardzustand: $attach(tr: dash.o, t) = 25 attach(tl: degree, C)$ #h(1em) $p^dash.o = 1 "atm"$ #h(1em) für Elemente $H^dash.o eq.triple 0$
  #v(.8em, weak: true)
  Enthalpie für Stoff i: $dash(H)_i (T) = dash(H)_i^dash.o + integral_(298K)^T dash(C)_p(T) dif T$ \
  #v(.8em, weak: true)
  exotherm: $Delta_R H < 0; $ endotherm: $Delta_R H > 0$ \
  exergon: $Delta_R G < 0;$ endergon: $Delta_R G > 0$
  #v(.2em)
][
  #sectionBlockTitle("Gleichgewichtskonstanten")
  #v(.5em, weak: true)
  #grid(
    columns: (1fr, 1fr, 1fr),
    align: top + center,
    [
      $ K_gamma eq.triple product gamma_i^(nu_i^*) $
      #v(.4em, weak: true)
      $gamma_i "Molenbrüche"$
    ],
    [
      $ K_c eq.triple product c_i^(nu_i^*) $
      #v(.4em, weak: true)
      $c_i = n_i / V$ Konzentration
    ],
    place(dy: -.8em, dx: 1em)[
      #v(-.6em)
      $ dash(K)_p eq.triple product (p_i / p^0)^(nu_i^*) $
      #v(.4em, weak: true)
      $p_i "Partialbrüche"$ \
      $p^0 "Referenzdruck"$
    ]
  )
  #v(1em, weak: true)
  $2"A" + "B" -> "C": space nu_A = -2; space nu_B = -1; space nu_C = 1$\
  für ideale Gase: $K_c = K_p (R T)^Delta nu^* space "mit" space Delta nu^* = sum nu_i^*$ \
  #v(1.1em, weak: true)
  $dash(K)_p = exp(- frac(Delta_R G, dash(R) T italic("mol")))$ #h(1em) und #h(1em)
  $K_gamma = p_italic("ges")^(-Delta nu^*) dot (p^dash.o)^(Delta nu^*) dash(K)_p$
  #v(.3em)
][
  #sectionBlockTitle([Säure-Basen-Reaktionen #h(1fr) $"pH" = -lg frac(["H"_3 "O"^+], "mol" \/ l)$])
  $K_S = frac(["H"_3 "O"^+]["S"^-], ["HS"]) = K_(c,S) ["H"_2 "0"]$ #h(2em)
  $K_B = frac(["HB"^+]["OH"^-], ["B"]) = K_(c,B) ["H"_2 "0"]$ \
  Säurekonstante: $"pK"_S = - lg K_S$ #h(1em) Basenkonstante: $"pK"_B = - lg K_B$ \
  Säure GGW: $"pK"_S + "pK"_B = -lg(K_S K_B) = -lg(["H"_3 "O"^+]["OH"^-]) "pK"_W$
  #v(.2em)
][
  #sectionBlockTitle("Elektrochemie")
  #v(.5em, weak: true)
  Elektrochemisches Gleichgewicht: $Delta G + Delta E_italic("el") = 0$ \
  $Delta E_italic("el") = n N_A e Delta E wide "mit" e = 1,6 dot 10^(-19)italic("As")$ #h(1em) und #h(1em)
  $Delta E = - frac(Delta G, n e N_A)$
  #v(.25em)
][
  #sectionBlockTitle("Vollständige Beschreibung von Stoffen")
  #v(.4em, weak: true)
  $dif U = T dif S - p dif V + sum mu_i dif N_i$ #h(1fr) \
  #place(top + right, dy: .3em, $mu_i = (frac(partial U, partial N_i))_(S, V, N_(j!=i))$)
  #v(.6em, weak: true)
  $dif H = T dif S + v dif p + sum mu_i dif N_i$ #h(1fr)
  $H eq.triple U + p V$ \
  $dif F = -S dif T - p dif V + sum mu_i dif N_i$ #h(1fr)
  $F eq.triple U - T S$ \
  $dif G = -S dif T + V dif p + sum mu_i dif N_i$ #h(1fr)
  $G eq.triple H - T S$
][
  #v(.1em)
  #sectionBlockTitle([Reaktionskinetik #text(style: "italic", weight: "regular", "mit") $"A" -> "B"$ #h(.5em) #text(style: "italic", weight: "regular", "und") #h(.5em) $r = k["A"]\; quad k(T) = A e^(-E_a\/(dash(R) T))$])
  #v(.8em, weak: true)
  $frac(dif ["A"], dif t) = -k["A"] frac(dif ["A"], ["A"])= -k dif t$ #h(1em)
  $["A"] = ["A"]_0 e^(-k t)$ \
  
  $frac(dif ["B"], dif t) = k ["A"] = k["A"]_0 e^(-k t)$ #h(1em)
  $["B"] = ["B"]_0 + ["A"]_0 (1 - e^(-k t))$
  #v(.2em)
]

#section("Wärmeübertragung")[
  #sectionBlockTitle([Wärmeleitung #text(style: "italic", weight: "regular", size: .9em, "(Fourier: Wärmestrom ist proportional zum Temperaturgradienten)")])
  #v(.4em, weak: true)
  stationär differentiell: $dot(Q) dif x = - lambda A dif T$ \
  stationär für $lambda = italic("konst")$: $dot(Q) = - lambda A frac(T_2 - T_1, x_2 - x_1) wide "für" T_1 > T_2$ #h(1fr) $R eq.triple frac(T_1 - T_2, dot(Q))$ \
  instationär: $rho c_v frac(partial T, partial tau) = "div"(lambda "grad" T)$ \
  für Platte (konstante Stoffwerte): $frac(partial T, partial tau) = alpha frac(partial^2 T, partial x^2) quad "mit" alpha = lambda / (rho c_v)$
  #v(.2em)
][
  #sectionBlockTitle("Konvektion")
  #v(.3em, weak: true)
  Newtons Abkühlungsgesetz: $dot(Q) = - alpha A (T_K - T_oo)$ #h(1em) \
  #v(.4em, weak: true)
  #imagetwins(
    image("res/diagrams/wü-gleichstrom.png"),
    image("res/diagrams/wü-gegenstrom.png")
  )
][
  #sectionBlockTitle("Strahlung")
  #v(.3em, weak: true)
  Kirchoffsche Strahlungsgesetz: $epsilon_lambda (T, lambda) = alpha_lambda (T, lambda)$ \
  Leistung grauer Strahler: $dot(Q) = A epsilon sigma T^4$ #h(1em) mit $sigma = 5.67 dot 10^(-8) W / (m^2 dot K^4)$ \
  Einfacher Strahlungsaustausch: $dot(Q)_(1->2) = A Sigma_12 (T_1^4 - T_2^4)$ #h(1em) \
  Planparallele Platten $A_1 = A_2$: $Sigma_12 = frac(sigma, 1/epsilon_1 + 1/epsilon_2 - 1)$ \
  Konvexer Körper mit $A_2 << A_1$: $Sigma_12 = sigma epsilon_1$ \
  #place(right + horizon, dy: 1.5em)[
    #set text(size: .6em)
    #set align(center)
    Strahlungsschilde:
    #v(.2em, weak: true)
    #image("res/diagrams/strahlungsschilde.png", height: 5em)
  ]
  #v(.5em, weak: true)
  Stationäre Strahlungsschutzschilde mit gleichem $epsilon$: $dot(Q) = A Sigma / (n + 1) (T_a^4 - T_b^4)$
  #v(.2em)
]

#section("Stoffübertragung")[
  #sectionBlockTitle("Diffusion")
  $arrow(J)_i = - M_i D_i "grad" c_i$ und $sum arrow(J)_i = 0$ \
  Diffusionkoeffizient idealer Gase: $D_i = 1 / 3 tilde(nu) dot Lambda$ \
  Mittlere Geschwindigkeit der Atome: $tilde(nu) = sqrt((8 R T) / (pi M))$ \
  Mittlere freie Weglänge: $Lambda = 1 / (sqrt(2) pi sigma^2 N_A) (R T) / p$
  #v(.25em)
][
  #sectionBlockTitle("Konvektion")
  #v(.3em, weak: true)

  #grid(
    columns: (1fr, 1fr),
    image("res/diagrams/stoffübertragung_konv.png"),
    block(inset: (left: 1em))[
      $j_(n, i) = beta_i (c_k_0 - c_k_w)$ \
      Stoffübertragungskoeffizient: \
      #v(1em, weak: true)
      $beta = D_k / delta = frac(- D_k (frac(partial c_k, partial x))_(x=0), Delta c_k)$
    ]
  )
]

#section("Verständnis")[
  #sectionBlockTitle("Atomphysik")
  #v(.3em, weak: true)
  Ionen: geladene Atome / Moleküle;
  Kationen: positiv;
  Anionen: negativ

  Quantenzahlen:
  Hauptquantenzahl n
  Schale im Bohrschen Atommodell
  Maß für den mittleren Abstand eines Elektrons vom Kern
  Werte: n = 1, 2, 3,. .. bzw. K, L, M

  Nebenquantenzahl l
  Gibt die Symmetrie des Atomorbitals an
  Maß für die Zahl an Knotenflächen
  Werte: l = 0(s), 1(p), 2(d), . . . , n - 1

  Magnetquantenzahl m (Orientierungsquantenzahl)
  Gibt die räumliche Orientierung eines Orbitals in einem äußeren Feld an
  Werte: m = {-l,...,0,...,+l} (2 l +1 mögliche Werte

  Spinquantenzahl s
  Eigendrehimpuls eines Elektrons
  Werte: $s = plus.minus 1/2$
  #v(.2em)
]

#pagebreak()
#set page(columns: 5)

#section("Diagramme")[
  #sectionBlockTitle("Einphasig")
  #v(.1em, weak: true)
  #imagetwins(
    image("res/diagrams/pv.svg"),
    image("res/diagrams/ts.png"),
  )
][
  #sectionBlockTitle("Nassdampf")
  #v(.4em, weak: true)
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

#section("Lindeverfahren")[
  #imagetwins(
    image("res/diagrams/linde-schema.png"),
    image("res/diagrams/linde-pv.png"),
  )
  #v(0em, weak: true)
  #imagetwins(
    image("res/diagrams/linde-Ts.png"),
    image("res/diagrams/linde-ph.png"),
  )
  #v(.2em, weak: true)
  $z = frac(h_5 - h_2, h_5 - h_4^')$
  #v(.2em)
][
  #sectionBlockTitle("Claude-Verfahren")
  #v(.3em, weak: true)
  #imagetwins(
    image("res/diagrams/claude-schema.png"),
    image("res/diagrams/claude-Ts.png"),
  )
  #v(.3em, weak: true)
  $z = frac(h_5 - h_2, h_5 - h_4^') + z^* frac(h_6 - h_7, h_5 - h_4^')$
  #v(.2em)
]

#section("Reale Gase")[
  #image("res/diagrams/reales-gas-pvp.png")
  #v(0em, weak: true)
  #imagetwins(
    image("res/diagrams/reales-gas-pv-isotherme.png"),
    image("res/diagrams/reales-gas-potenzial.png")
  )
  #v(0em, weak: true)
  #image("res/diagrams/reale-gase-joule-thomson-ph.png")
][
  #sectionBlockTitle("Van-der-Waals")
  #v(.3em, weak: true)
  #imagetwins(
    image("res/diagrams/vdW-Gas.png"),
    image("res/diagrams/reales-gas-pvp-krit.png")
  )
][
  #sectionBlockTitle([Reaktionsverlauf #text(style: "italic", weight: "regular", "für") $2 "CO" + "O"_2 -> 2 "CO"_2$])
  #v(.4em, weak: true)
  #image("res/diagrams/reaktionsverlauf.png")
][
  #sectionBlockTitle("Geschwindigkeitsverteilung")
  #v(.3em, weak: true)
  Boltzmann:
  #v(.2em, weak: true)
  #image("res/diagrams/boltzmann-verteilung.png")
  #v(.2em, weak: true)
  Maxwell:
  #v(.3em, weak: true)
  #image("res/diagrams/maxwell-verteilung.png")
]

#section("Bauteile")[
  #image("res/diagrams/bauteile.png")
]

#flasche

#section("hx+1 - Diagramm")[
  #image("res/diagrams/hx+1.png")
][
  #sectionBlockTitle("Erwärmung / Kühlung bei konstantem Feuchtegrad")
  #v(.4em, weak: true)
  #grid(
    columns: (1fr, 1fr),
    [
      #image("res/diagrams/erwärmung-kühlung-proz.png")
      #v(.2em, weak: true)
      Feuchtegrad $x = italic("konst")$ \
      Erwärmung: relative Feuchte nimmt ab \
    ],
    image("res/diagrams/erwährmung-kühlung-hxx.png"),
  )
  #v(.2em, weak: true)
  Kühlung: relative Feuchte nimmt zu
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
