#import "template/template.typ": *

#let thermo_basics = [
  #section("Bilanzgleichungen für Energie und Entropie")[
    #sectionBlockTitle("1. Hauptsatz der Thermodynamik")
    #v(.5em, weak: true)
    #align(center, scale(99%, reflow: true, $ sum dot(W) + sum dot(Q) + sum dot(m) (h + frac(c^2,2) + g z) = frac(dif, dif tau) sum m (dash(u) + dash(e)_("kin") + dash(e)_("pot")) $))
    #v(.4em, weak: true)
    geschlossen, ruhend: $delta Q + delta W = d U$ \
    Sys. bew. durch Kontrollraum: $delta q + delta w = dif h + c dif c + g dif z$
    durchströmter, stationärer Kontrollraum: $q + w = Delta h + Delta c^2/2 + g Delta z$
    Euler-Gleichung: $delta w_"rev" = 0 = v dif p + c dif c + g dif z$
  ][
    #sectionBlockTitle("2. Hauptsatz der Thermodynamik")
    #v(.5em, weak: true)
    $ frac(dif , dif tau) sum S = dot(S)_("erz") + sum frac(dot(Q), T) + sum dot(m) s wide "mit" dot(S)_("erz") >= 0 $
    #v(.6em, weak: true)
    Clausius'sche Ungleichung $(dot(m) = 0)$: $0 <= integral.cont frac(delta Q, T)$
    #v(.2em)
  ]

  #section("Ideales und perfektes Gas")[
    #sectionBlockTitle("Ideales Gas")
    #v(-.2em, weak: true)
    $ p v = R T <=> p V = m R T <=> p V = n dash(R) T wide R = 8.314 space frac(J, italic("mol") dot K) $
    #v(.1em, weak: true)
    $p dash(V) = dash(R) T wide "mit" space dash(V) = V/n$

    // $ u = u(T) wide d u = c_v d T wide wide h = h(T) wide d h = c_p d T $
    #v(.8em, weak: true)
    Es gilt:
    $(frac(partial u, partial v))_T = 0 space => space dif u = c_v dif T space "und" space (frac(partial h, partial p))_T = 0 space => space dif h = c_p dif T$
    #v(.3em)
  ][
    #sectionBlockTitle([Perfektes Gas (Ideales Gas mit $c_p = italic("konst")$ und $c_v = italic("konst")$)])
    #if SHOW_EASY_STUFF {
      $ Delta h = c_p Delta T; quad Delta u = c_v Delta T $
    }
    
    #v(.5em, weak: true)
    $ Delta s_(12) = c_v ln T_2/T_1 + R ln v_2/v_1 = c_p ln T_2 / T_1 - R ln p_2/p_1 = c_p ln v_2 / v_1 + c_v ln p_2 / p_1 $
  ][
    #sectionBlockTitle("Isentrope Zustandsänderung eines perfekten Gases")
    (oder polytrope Zustandsänderung mit $n$ statt $kappa$):
    #v(.7em, weak: true)
    $ p v^kappa = italic("konst"); quad p^(1-kappa) dot T^kappa = italic("konst"); quad T dot v^(kappa - 1) = italic("konst") $
    #v(.5em, weak: true)
    $ T = T_1 e^frac(s-s_1, c_v) dot (v_1 / v)^frac(R, c_v); quad T_2 = T_1 (p_1 / p_2)^frac(1 - kappa, kappa); quad T_2 = T_1 (v_1 / v_2)^(kappa - 1) $
    
    #if SHOW_EASY_STUFF [
      #v(.5em, weak: true)
      $ frac(1 - kappa, kappa) = - R / c_p; quad 1 - kappa = - R / c_v $
    ]

    #v(.5em, weak: true)
    isochor: $n = 0$; isotherm: $n = 1$; isochor: $n=infinity$; isentrop: siehe $kappa$

    $ W_(12) = - integral_(V_1)^(V_2) p dif V = frac(m R T_1, kappa - 1) dot [(V_1/V_2)^(kappa - 1) - 1]$ #h(1em) geschlossenes System

    $W_(12) = - integral_(p_1)^(p_2) V dif p = frac(kappa, kappa - 1) dot m R T_1 dot [(p_2/p_1)^frac(kappa - 1, kappa) - 1]$ #h(1em) offenes System

    // Arbeit im geschlossenen System:
    // #v(.8em, weak: true)
    // $#boxhighlight(color: blue, outset: .1em)[$ W_(12) = - integral_(V_1)^(V_2) p dif V = frac(m R T_1, kappa - 1) dot [(V_1/V_2)^(kappa - 1) - 1] $] $
    // #v(.7em, weak: true)
    // offenen System:
    // #v(.8em, weak: true)
    // $#boxhighlight(color: purple, outset: .1em)[$ W_(12) = - integral_(p_1)^(p_2) V dif p = frac(kappa, kappa - 1) dot m R T_1 dot [(p_2/p_1)^frac(kappa - 1, kappa) - 1] $] $
    #v(.2em)
  ]

  #section("Inkompressible Flüssigkeit")[
    $v = italic("konst") -> dif v = 0; wide rho = m/V; wide c_p = c_v = c; wide Delta u = c Delta T$ \
    // $Delta u = c Delta T; wide Delta h = c Delta T + v Delta p; wide Delta s = c ln T_2 / T_1$ \
    // Eulergleichung für stationär, rev. durchströmten Kontrollraum:
    // #v(.5em, weak: true)
    // $ 0 = d p + rho c space d c + rho g space d z quad -> quad Delta p = rho Delta c^2/2 + rho g Delta z = 0 $
    #v(.6em, weak: true)
    // Kontinuitäts- und Bernoulligleichung (aus Euler $rho = italic("konst")$):
    // #v(.5em, weak: true)
    // #align(center, $dot(m_1) = dot(m_2) = dot(m) = rho A_1 c_1 = rho A_2 c_2 wide "mit" A = dot(v)/c = frac(dot(m), rho c)$)
    Kontinuitätsgleichung: $dot(m_1) = dot(m_2) = dot(m) = rho A_1 c_1 = rho A_2 c_2$ \
    Bernoulligleichung (aus Euler $rho = italic("konst")$)$: 0 = Delta p + rho (Delta c^2 / 2 + g Delta z)$
    #v(.7em, weak: true)
    Entropieänderung: $Delta s = c ln (T_2 / T_1)$
    #v(.2em)
  ]

  #section("Reale Stoffe")[
    Dampfanteil: $V = m v = m_F v' + m_D v'' -> v = (1 - x) v' + x v''$ \
    $-> x eq.triple m_D / m_("ges") = frac(a - a', a'' - a') quad "bzw." quad a = a' + x (a'' - a') quad "mit" quad a =  v, h, u, s$ \
    #v(.8em, weak: true)
    #[
      #show math.equation: set align(left)
      $ => frac(d p, d T) = frac(h'' - h', T dot (v'' - v')) = frac(s'' - s', v'' - v') wide "Für die Dichte git:" quad v' = 1/rho' $
    ]
    #v(.5em, weak: true)
    Clausius-Clapeyron-Gleichung: Kreisprozess im Zweiphasengebiet:
    1. HS rev. Kreisprozess: $dif U = delta Q_italic("rev") + delta W_italic("rev") quad <-> quad integral p dif v = integral T dif s$ \
    $-> (v'' - v') dif p = (s'' - s') dif T quad <-> quad frac(partial p, partial T) = frac(s'' - s', v'' - v') = frac(h'' - h', T (v'' - v'))$ \
    #v(.8em, weak: true)
    Vereinfachungen:
    $v' << v'' quad -> v'' - v' = v''$ und $v'' = frac(R T, p)$ (ideales Gas)
    $h'' - h' = Delta h_v = italic("konst") -> ln p_2 / p_1 = - frac(Delta h_v, R) (1/T_2- 1 / T_1)$ in jedem 2-PhGeb.
    #v(.25em)
  ]

  #section("Exergie und Exergieverlust")[
    Falls Verschiebeenergie gegen Umgebung vernachlässigbar: $a = 0$
    #v(.6em, weak: true)
    $ epsilon = u - u_u - T_u dot (s - s_u) + underbracket(p_u dot (v - v_u), "a") > 0 $
    #v(.1em, weak: true)
    Technische Exergie:
    $space epsilon_t = h - h_u + frac(Delta c^2, 2) + g Delta z - T_u dot (s - s_u) > 0$ \
    Exergieverlust: $wide space epsilon_v = T_u dot s_("erz") = T_u dot Delta s$
    #v(.12em)
  ]

  #if SHOW_EASY_STUFF {
  // #if true {
    section("Mathematische ln - Tricks")[
      $x + ln y = ln (x y); quad ln x - ln y = ln (x / y)$ \
      $b = a^x <=> ln b = x ln a; quad e^(c ln (b) + a) = b^c dot e^a$
    ]
  }

  #section("Allgemeingülte Zusammenhänge")[
    #sectionBlockTitle([$bold(R)$ und $bold(c_v)$, $bold(c_p)$ Zusammenhänge, Mole])
    #let spacing = .4em

    #v(.8em, weak: true)
    $R = frac(dash(R), M);$ #h(spacing)
    $n = m / M;$ #h(spacing)
    $N = n dot N_A;$ #h(spacing)
    $R = c_p - c_v;$ #h(spacing)
    $kappa eq.triple c_p / c_v;$ #h(spacing)
    $dash(R) = k_B N_A$

    #v(.95em, weak: true)
    #grid(
      gutter: 1.4em,
      columns: (5fr, 3fr),
      [
        $R = "individuelle Gaskonst." =^("für "N_2) 0.297 J / (K dot g)$ \
        $dash(R) = "universelle Gaskonst." = 8.314 frac(J, italic("mol") dot K)$ \
        $k_B = "Botzmannkonst." = 1,38 dot 10^(-23) J/K$
        $N_A #if SHOW_EASY_STUFF { $= "Avogadrozahl"$ } = 6,022 dot 10^23italic("mol")^(-1)$
      ],
      [
        $n = "Stoffmenge"$ \
        $M = "Molmasse"$ \
        $N = "Teilchenzahl"$ \
      ]
    )
    #v(.1em)
  ][
    #sectionBlockTitle("Fundamentalgleichungen, Cp, Cv, Arbeit und Wärme")
    #v(.5em, weak: true)
    #[
      #show math.equation: set align(left)

      $ dif u = (frac(partial u, partial T))_v dif T + (frac(partial u, partial v))_T dif v = T dif s - p dif v = dif h - v dif p - p dif v $
      #v(.5em, weak: true)
      $ dif h = (frac(partial h, partial T))_p dif T + (frac(partial h, partial p))_T dif p = T dif s + v dif p = dif u + v dif p + p dif v $
      #v(.5em, weak: true)
      $ dif s = (frac(partial s, partial T))_v dif T + (frac(partial s, partial v))_T dif v = frac(dif u, T) + p / T dif v = frac(dif h, T) - v / T dif p $
    ]

    #if SHOW_EASY_STUFF {
      $ (frac(partial u, partial T))_v = c_p (T, p) wide (frac(partial u, partial T))_v = c_v (T, v) $
    }
    #v(.6em, weak: true)
    $C_p (p, T) = C_p^0 (p = 0"bar", T) + integral_(p = 0)^p (frac(partial C_p, partial tilde(p)))_T dif tilde(p) $
    #v(.7em, weak: true)
    $C_v (v, T) = C_v^oo (T) + integral_oo^v (frac(partial C_v, partial tilde(v)))_T dif tilde(v) $
    #v(.8em, weak: true)

    reversible Arbeit (bei Volumenänderung): $delta W_italic("rev") = - p dif V$ \
    technische Arbeit (bei Durchströmung): $delta W_italic("rev") = V dif p + c dif c + g dif z$ \
    abgegebene Wärme: $delta Q_italic("rev") = T dif S = dif U + p dif V wide "mit" space h eq.triple u + p v$
  ][

    #sectionBlockTitle("Vollständige Differenziale")
    $(frac(partial u, partial v))_T = T (frac(partial p, partial T))_v - p;$ #h(1em)
    $(frac(partial h, partial p))_T = v - T (frac(partial v, partial T))_p;$ #h(1em)
    $(frac(partial s, partial T))_v = c_v / T$ \

    $(frac(partial s, partial T))_p = c_p / T;$ #h(1em)
    $(frac(partial s, partial p))_T = - (frac(partial v, partial T))_p;$ #h(1em)
    $(frac(partial s, partial v))_T = (frac(partial p, partial T))_v$ \

    $(frac(partial c_v, partial v))_T = T (frac(partial^2p, partial T^2))_v;$ #h(1em)
    $(frac(partial c_p, partial p))_T = - T (frac(partial^2 v, partial T^2))_p$
    #v(.25em)
    // #grid(
    //   columns: (1fr, 1fr),
    //   align: left,
    //   [
    //     // $(frac(partial u, partial v))_T = T (frac(partial p, partial T))_v - p$ \
    //     // $(frac(partial s, partial T))_v = c_v / T$ \
    //     // $(frac(partial s, partial T))_v = c_v / T$ \
    //     $(frac(partial c_v, partial v))_T = T (frac(partial^2p, partial T^2))_v$
    //   ],
    //   [
    //     // $(frac(partial h, partial p))_T = v - T (frac(partial v, partial T))_p$ \
    //     // $(frac(partial s, partial v))_T = (frac(partial p, partial T))_v$ \
    //     $(frac(partial s, partial p))_T = - (frac(partial v, partial T))_p$ \
    //     $(frac(partial c_p, partial p))_T = - T (frac(partial^2 v, partial T^2))_p$
    //   ]
    // )

    
    // Vorzeichen von $c_p - c_v$:
    // #scale(x: 80%, y: 60%, reflow: true)[
    //   #show math.equation: set align(left)
    //   $
    //   dif s = (frac(partial s, partial T))_v dif T + (frac(partial s, partial v))_T dif v wide wide | dot (frac(partial, partial T)) p \
    //   (frac(partial s, partial T))_p = (frac(partial s, partial T))_v + (frac(partial s, partial v))_T (frac(partial v, partial T))_p quad
    //   -> c_p -  c_v = T (frac(partial p, partial T))_v (frac(partial v, partial T))_p > 0
    //   $
    // ]
  ]

  #section("Wirkungsgrade und Leistungsziffern")[
    #v(.3em)
    $eta = "Nutzen"/"Aufwand"$
    #h(1fr)
    $eta_("th","WKM") = W_"ab" / Q_"zu" = frac(Q_"zu" - abs(Q_"ab"), Q_"zu") space =_"Stirling"^"Carnot" space 1 - T_"ab" / T_"zu"$

    $eta_("th","CR") = frac(abs(W_"Turbine") - abs(W_"Kesselpumpe"), Q_("zu","Kessel"))$
    #h(1em)
    $epsilon_"KM" = frac(italic("Gewinn"), italic("Aufwand")) = Q_"zu" / W_"zu" = frac(Q_"ab", abs(Q_"ab") - Q_"zu")$
    
    $epsilon_"WP" = epsilon_"KM" + 1 = frac(abs(Q_"ab"), abs(Q_"ab") - Q_"zu")$ \
    #v(.8em, weak: true)
    Für reversible Kreisprozesse gilt der Carnot-Wirkungsgrad:
    #v(.8em, weak: true)
    $eta_C = frac(T_"zu" - T_"ab", T_"zu"); space eta_"ges" = 1 - product_(i=0)^n (1 - eta_i); quad epsilon_"KM" = frac(T_"zu", T_"ab" - T_"zu"); space epsilon_"WP" = frac(T_"ab", T_"ab" - T_"zu")$
    #v(.2em)
  ]



  // #section("Schallgeschwindigkeit und Düsenströmung")[
  //   #sectionBlock(title: "Schallgeschwindigkeit")[
  //     Massenerhaltung: $dot(m) = rho A c = italic("konst") wide "mit" A = italic("konst")$ \
  //     $->dif (d rho) = c dif rho + rho dif c = 0 quad <-> quad rho dif c = - c dif rho quad -> c^* = sqrt((frac(partial p, partial rho))_s)$ \
  //     Euler ($dif z = 0$): $0 = dif p + rho c dif c quad -> dif p - c^2 dif rho = 0$
  //   ]
  // ]

  #section("Feuchte Luft")[
    Feuchteanteil: $y = m_W / m_italic("ges") = frac(x, 1 + x)$ #h(2em)
    Feuchtegrad: $x = m_W / m_L = y / (1 - y)$ \
    Relative Feuchte: $phi = p_D / p_(s(T))$ #h(2em) $p_italic("ges") = p_L + p_D$ \
    #v(.5em, weak: true)
    #scale(95%, x: 86%, reflow: true, $ p_D/p_L = frac(m_D R_D, m_L R_L) = x R_D/R_L; quad p_D = frac(p_italic("ges"), 1 + 1/x dot R_L / R_D); quad x = frac(R_L, R_D (p_italic("ges")/p_D - 1)); quad rho_italic("ges") / rho_L = frac(1 + x, 1 + x R_D / R_L) $)
    #v(.5em, weak: true)
    Enthalpie feuchter Luft: $h_(1+x) = h_L + x h_D$ (ungesättigt) \
    $h_(1+x) = h_L + x_s h_D + (x - x_s) h_F$ (übersättigt) \
    Luft: $h_L = C_(p,L) dot t wide t_0 = 0 space attach(tl: degree, C)$ für Wasser \
    Dampf: $h_D = Delta h_italic("vo") + C_(p, D) dot t wide Delta h_italic("vo") = 2500 J/g$ \
    Wasser: $h_F = C_(p, F) dot t$ #h(2em)
    Eis: $h_E = - h_italic("so") + C_(p,E) dot t wide h_italic("so") = 322 J/g$

    Im Nebelgebiet gilt: Isothermensteigung für $t = "Enthalpie"$ flüssigen Wassers bei $t$ \
  ]

  #section("Gemisch idealer Gase")[
    #sectionBlockTitle("Grundlegende Zusammenhänge")
    #v(.5em, weak: true)
    #grid(
      row-gutter: .5em,
      rows: 2,
      columns: (1fr, 1fr, 2fr),
      align: center,
      gutter: 1em,
      "Massenanteil",
      "Gesamtdruck",
      "Partialdruck aus Gesamtmasse",
      $ xi_i = m_i / m_M $,
      $ p_M = sum p_i $,
      $ p_i / p_M = frac(m_i R_i, m_M R_M) = xi_i dot R_i / R_M $
    )
    #v(.1em, weak: true)
    Gemisch zweier idealer Gase:
    #v(.5em, weak: true)
    #grid(columns: (1fr, 1fr,),
      $ p_a / p_b = frac(m_a R _a, m_b R_b) = xi_a / xi_b dot R_a / R_b = gamma_a / gamma_b = n_a / n_b $,
      $ u_M = sum xi_i u_i space "analog für:" \ c_(v M); c_(p M); h_M; R_M $
    )
    #v(.1em, weak: true)
    $ T_M = frac(sum m_i c_(v i) T_(i,1), sum m_i c_(v i)) = frac(sum xi_i c_(p i) T_(i,1), sum xi_i c_(p i)) wide "mit" space sum xi_i c_(p i) eq.est c_(p M) $
    #v(.5em, weak: true)
    Mischungsentropie (S-änderung während Vermischung perf. Gase): \
    #v(.8em, weak: true)
    #scale(x: 90%, y: 80%, reflow: true, $Delta S = sum m_i (c_(p i) ln T_m / T_(i,1) - R_i ln p_i / p_(i,1)) "bzw" Delta S = sum m_i (c_(v i) ln T_m / T_(i,1) + R_i ln V_M / V_(i,1))$)
    #v(.7em, weak: true)
    $
      sum p_i V = sum m_i R_i T space => space p_M V = m_M R_M T
    $
  ][
    #sectionBlockTitle("Zusätzlich Beziehungen für Molrechnung")
    #v(.6em, weak: true)
    #grid(
      columns: (3fr, 3fr, 5fr),
      gutter: .3em,
      align: center,
      [Molanteil: $gamma_i = n_i / n_M$],
      [Molzahl: $n_i = m_i / M_i$],
      [Molzahl Gemisch: $n_M = sum n_i$]
    )
    #v(.5em, weak: true)
    $ dash(U)_M = sum gamma_i dash(U)_i space "analog für:"  dash(C)_(v M); dash(C)_(p M); dash(H)_M wide kappa_M = dash(C)_(p M) / dash(C)_(v M) = C_(p M) / C_(v M) $
    #v(.5em, weak: true)
    #[
      Partialdruck mit Molzahl: #h(1fr)
      $p_i = n_i / n_G dot p_G quad gamma_i = p_i / p_M quad -> p_1/p_2 = frac(xi_1 R_1, xi_2 R_2)$ \

      Zammenhang $gamma$ und $xi$: #h(1fr)
      $gamma_i = xi_i dot M_M / M_i wide "bzw" wide xi_i = gamma_i dot M_i / M_M$ \
      #v(.9em, weak: true)
      ideales Gasgesetz: #h(1fr)
      $p_M V = n_M dash(R) T wide m R = n dash(R) wide dash(C)_v = dash(C)_p - R$ \
    ]

    #v(.9em, weak: true)
    Gesamtmolmasse: #h(1fr)
    $M_M = frac(sum p_i M_i, sum p_i) = sum gamma_i M_i = frac(sum n_i M_i, n_M) = (sum xi_i / M_i)^(-1)$
    #v(.2em)
  ]
]

#let flasche = section("Evakuierte Flasche")[
  #set math.cancel(stroke: red)
  #grid(
    columns: (1fr, 2fr),
    gutter: .2em,
  )[
    #image("res/diagrams/evakuierte-flasche.png")
    #place($dot(m)$, right + horizon, dx: -.3em, dy: -.6em)
    #place("KV", right, dy: -1em, dx: -.2em)
  ][
    #set align(horizon + center)
    $cancel(sum dot(W)) + cancel(sum dot(Q)) + sum dot(m) (h + c^2 / 2 + cancel(g z)) \ = dif / (dif tau) sum m (u + e_italic("kin") + cancel(e_italic("pot")))$
  ]
  #v(0em, weak: true)
  #grid(
    columns: (1fr, 2fr),
    gutter: .2em,
  )[
    #image("res/diagrams/evakuierte-flasche-luft.png")
  ][
    #set align(center + horizon)
    $cancel(delta q) + cancel(delta w) = dif h + c dif c + cancel(g dif z)$ \
    $-> h_"ein" + c_"ein"^2 / 2 - cancel(c_"u"^2 / 2) = h_"u" = italic("konst")$
  ]
  #v(.1em, weak: true)
  $ -> dot(m)(h_"ein" + c_"ein"^2 / 2) = frac(dif, dif tau)[m(u + e_italic("kin"))] wide | integral_(tau_1)^tau_2 dif tau \
  m_"ein" h_"u" = m_2 (u_2 + cancel(e_(italic("kin"),2))) - cancel(m_1)(u_1 + e_(italic("kin"),1)); quad m_2 = m_"ein" \
  -> h_"u" = u_2 wide "mit" h_"u" = u_"u" + (p v)_"u" = u_"u" + R T_"u" \
  u_2 - u_"u" = Delta u = R T_"u" wide Delta u = c_v (T_2 - T_"u") \
  => c_v (T_2 - T_"u") = R T_"u" => c_v T_2 = (R + c_v) T_"u" = c_p T_"u" \
  => T_2 = kappa T_"u"
  $
]
