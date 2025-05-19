:- module(conocimientos, [
    nombre_cientifico/2,
    continente_origen/2,
    pais_origen/2,
    modo_preparacion/2,
    enfermedad/1,
    sintoma_enfermedad/2,
    trata_enfermedad/2,
    accion_efecto_planta/2,
    modo_tratamiento/2,
    precaucion_planta/2,
    planta/1,
    imagen_planta/2,
    medicamento/2,
    elementos/2
]).

%hechos y reglas

% Pagina 36.  abrojo
planta(abrojo).
nombre_cientifico(abrojo, tribulus_cistoides).
continente_origen(abrojo, america).
pais_origen(abrojo, mexico).
modo_preparacion(abrojo, cocimiento).
enfermedad(infeccion_urinaria).
enfermedad(cistitis).
enfermedad(infeccion_rinones).
sintoma_enfermedad(infeccion_urinaria, ardor_al_orinar).
trata_enfermedad(abrojo, infeccion_urinaria).
trata_enfermedad(abrojo, cistitis).
accion_efecto_planta(abrojo, diuretico).
accion_efecto_planta(abrojo, antiinflamatorio).
modo_tratamiento(abrojo, tres_veces_dia).
precaucion_planta(abrojo, embarazo).
medicamento(abrojo, tribulus_terrestris_extracto).
elementos(abrojo, [saponinas, flavonoides, alcaloides, agua]).
imagen_planta(abrojo,'imgs/abrojo.jpg').


% Pagina 37.  acacia


% Pagina 38.  acanto

%-- ACONITO PAG.41 --
planta(aconito).
nombre_cientifico(aconito, 'Aconitum napellus').
cura(aconito, neuralgia).
cura(aconito, fiebre).
cura(aconito, reumatismo).
tipo_enfermedad(neuralgia, nerviosa).
tipo_enfermedad(fiebre, general).
tipo_enfermedad(reumatismo, musculoesqueletica).
uso_externo(aconito).
parte_util(aconito, raiz).
forma_uso(aconito, tintura).
compatible(aconito, adormidera).
origen(aconito, europa).
precaucion(aconito, toxicidad_alta).
medicamento(aconito, aconitina).
elementos(aconito, [aconitina, alcaloides, agua]).
imagen_planta(aconito,'imgs/Aconiato.jpg').

%-- ADORMIDERA PAG.42 --
planta(adormidera).
nombre_cientifico(adormidera, 'Papaver somniferum').
cura(adormidera, insomnio).
cura(adormidera, dolor).
cura(adormidera, ansiedad).
tipo_enfermedad(insomnio, nerviosa).
tipo_enfermedad(dolor, general).
tipo_enfermedad(ansiedad, mental).
uso_interno(adormidera).
parte_util(adormidera, capsula).
forma_uso(adormidera, infusion).
forma_uso(adormidera, extracto).
compatible(adormidera, aconito).
origen(adormidera, asia).
precaucion(adormidera, dependencia).
medicamento(adormidera, morfina).
elementos(adormidera, [morfina, codeina, papaverina, agua]).
imagen_planta(adormidera,'imgs/Adormidera.jpg').

%-- AGUACATE PAG.43 --
planta(aguacate).
nombre_cientifico(aguacate, 'Persea americana').
cura(aguacate, estrenimiento).
cura(aguacate, problemas_digestivos).
cura(aguacate, tos).
tipo_enfermedad(estrenimiento, digestiva).
tipo_enfermedad(problemas_digestivos, digestiva).
tipo_enfermedad(tos, respiratoria).
uso_interno(aguacate).
parte_util(aguacate, hoja).
forma_uso(aguacate, infusion).
forma_uso(aguacate, cocimiento).
compatible(aguacate, ajenjo).
pais_origen(aguacate, Mexico).
medicamento(aguacate, aceite_de_aguacate).
elementos(aguacate, [acidos_grasos, vitamina_e, potasio, agua]).
imagen_planta(aguacate,'imgs/Aguacate.jpg')

%-- AHUEHUETE PAG.44 --
planta(ahuehuete).
nombre_cientifico(ahuehuete, 'Taxodium mucronatum').
cura(ahuehuete, enfermedades_respiratorias).
cura(ahuehuete, infecciones_piel).
tipo_enfermedad(enfermedades_respiratorias, respiratoria).
tipo_enfermedad(infecciones_piel, cutanea).
uso_externo(ahuehuete).
parte_util(ahuehuete, corteza).
forma_uso(ahuehuete, decoccion).
pais_origen(ahuehuete, Mexico).
medicamento(ahuehuete, extracto_de_taxodium).
elementos(ahuehuete, [taninos, aceites_esenciales, resinas, agua]).
imagen_planta(ahuehuete,'imgs/Ahuehuete.jpg').

%-- AJENJO PAG.45 --
planta(ajenjo).
nombre_cientifico(ajenjo, 'Artemisia absinthium').
cura(ajenjo, parasitos_intestinales).
cura(ajenjo, problemas_digestivos).
cura(ajenjo, debilidad_general).
tipo_enfermedad(parasitos_intestinales, digestiva).
tipo_enfermedad(problemas_digestivos, digestiva).
tipo_enfermedad(debilidad_general, general).
uso_interno(ajenjo).
parte_util(ajenjo, hojas).
forma_uso(ajenjo, infusion).
forma_uso(ajenjo, macerado).
compatible(aguacate, ajenjo).
origen(ajenjo, europa).
precaucion(ajenjo, embarazo).
medicamento(ajenjo, absintina).
elementos(ajenjo, [absintina, tuyona, aceites_esenciales, agua]).
imagen_planta(ajenjo,'imgs/Ajenjo.jpg').

% Pagina 46. ajo
planta(ajo).
nombre_cientifico(ajo, allium_sativum).
continente_origen(ajo, asia_central).
pais_origen(ajo, siberia).
pais_origen(ajo, norte_de_iran).
modo_preparacion(ajo, con_miel).
modo_preparacion(ajo, machacar).
modo_preparacion(ajo, molido_con_leche).
enfermedad(reumas).
enfermedad(sarna).
enfermedad(tina).
enfermedad(callos).
enfermedad(lombrices).
sintoma_enfermedad(reumas, dolor_articular).
sintoma_enfermedad(sarna, erupcion_en_la_piel).
sintoma_enfermedad(tina, Manchas_circulares_rojas).
sintoma_enfermedad(callos, piel_engrosada_y_amarillenta).
sintoma_enfermedad(lombrices, picazon_anal).
trata_enfermedad(ajo, reumas).
trata_enfermedad(ajo, sarna).
trata_enfermedad(ajo, tina).
trata_enfermedad(ajo, callos).
trata_enfermedad(ajo, lombrices).
accion_efecto_planta(ajo, antiinflamantorio).
accion_efecto_planta(ajo, vermifugo).
accion_efecto_planta(ajo, febrifugo).
accion_efecto_planta(ajo, diuretico).
accion_efecto_planta(ajo, expectorante).
accion_efecto_planta(ajo, antiparasitario).
modo_tratamiento(ajo, consumo_en_ayunas).
modo_tratamiento(ajo, aplicado_directamente).
precaucion_planta(ajo, problemas_gastrointestinales).
medicamento(ajo, alicina).
elementos(ajo, [alicina, compuestos_organosulfurados, vitamina_c, agua]).
imagen_planta(ajo,'imgs/ajo.jpeg').

% Pagina 47. albahaca
planta(albahaca).
nombre_cientifico(albahaca, ocimum_basilicum).
continente_origen(albahaca, asia_central_y_africa).
pais_origen(albahaca, india).
modo_preparacion(albahaca, jugo).
enfermedad(alopecia).
sintoma_enfermedad(alopecia, caida_de_cabello).
trata_enfermedad(albahaca, alopecia).
accion_efecto_planta(albahaca, tonico_capilar).
accion_efecto_planta(albahaca, diuretica).
accion_efecto_planta(albahaca, carminativa).
accion_efecto_planta(albahaca, emenagoga).
modo_tratamiento(albahaca, riccionarse_en_pelo).
precaucion_planta(albahaca, reacciones_alergicas).
medicamento(albahaca, aceite_esencial_de_albahaca).
elementos(albahaca, [eugenol, linalol, flavonoides, agua]).
imagen_planta(albahaca,'imgs/albahaca.jpeg').

% Pagina 48. alcachofa
planta(alcachofa).
nombre_cientifico(alcachofa, cynara_scalimus).
continente_origen(alcachofa,africa).
pais_origen(alcachofa, egipto).
modo_preparacion(alcachofa, cocer).
enfermedad(diabetes).
enfermedad(anemia).
sintoma_enfermedad(diabetes, sed_excesiva).
sintoma_enfermedad(anemia, cansancio_y_debilidad).
trata_enfermedad(alcachofa, diabetes).
trata_enfermedad(alcachofa, anemia).
accion_efecto_planta(alcachofa, descongestionante).
accion_efecto_planta(alcachofa, desinflamatorio).
modo_tratamiento(alcachofa, tomarlo_con_gusto).
precaucion_planta(alcachofa, alergias).
medicamento(alcachofa, cinarina).
elementos(alcachofa, [cinarina, flavonoides, fibra, agua]).
imagen_planta(alcachofa,'imgs/alcachofa.jpeg').

% Pagina 49. alcanfor
planta(alcanfor).
nombre_cientifico(alcanfor,laurus_camphora).
continente_origen(alcanfor, Asia).
pais_origen(alcanfor, Taiwan).
modo_preparacion(alcanfor, aceite).
enfermedad(gota).
enfermedad(piquetes_mosco).
enfermedad(tifoidea).
sintoma_enfermedad(gota, dolor_intenso).
sintoma_enfermedad(gota, hinchazon).
sintoma_enfermedad(gota, enrojecimiento).
sintoma_enfermedad(piquetes_mosco, hinchazon).
sintoma_enfermedad(piquetes_mosco, picazon).
sintoma_enfermedad(tifoidea, fiebre_alta).
sintoma_enfermedad(tifoidea, diarrea).
sintoma_enfermedad(tifoidea, manchas_rojas).
trata_enfermedad(alcanfor, gota).
trata_enfermedad(alcanfor, tifoidea).
trata_enfermedad(alcanfor, piquetes_mosco).
trata_enfermedad(alcanfor, artritis).
trata_enfermedad(alcanfor, arteriosclerosis).
accion_efecto_planta(alcanfor, analgesico).
accion_efecto_planta(alcanfor, antiseptico).
modo_tratamiento(alcanfor, untar_aceite_3_veces_al_dia).
precaucion_planta(alcanfor, no_usar_en_exceso).
medicamento(alcanfor, aceite_de_alcanfor).
elementos(alcanfor, [alcanfor, terpenos, agua]).
imagen_planta(alcanfor,'imgs/alcanfor.jpg').

% Pagina 50. amapola amarilla
planta(amapola_amarilla).
nombre_cientifico(amapola_amarilla, eschscholtzia_californiana).
continente_origen(amapola_amarilla, America).
pais_origen(amapola_amarilla, Mexico).
modo_preparacion(amapola_amarilla, infusion).
sintoma_enfermedad(diarrea, heces_blandas).
sintoma_enfermedad(diarrea, dolor_intestinal).
trata_enfermedad(amapola_amarilla, diarrea).
trata_enfermedad(amapola_amarilla, insomnio).
trata_enfermedad(amapola_amarilla, ansiedad_leve).
accion_efecto_planta(amapola_amarilla, sedante_suave).
accion_efecto_planta(amapola_amarilla, antiespasmodico).
modo_tratamiento(amapola_amarilla, tomar_infusion_1_vez_por_la_noche).
precaucion_planta(amapola_amarilla, evitar_en_embarazo).
precaucion_planta(amapola_amarilla, evitar_en_lactancia).
medicamento(amapola_amarilla, extracto_de_amapola).
elementos(amapola_amarilla, [alkaloides, flavonoides, agua]).
imagen_planta(amapola_amarilla,'imgs/amapolaAmarilla.jpg').

% Pagina 51. amate
planta(amate).
nombre_cientifico(amate, ficus_insipida).
continente_origen(amate, America).
pais_origen(amate, Mexico).
modo_preparacion(amate, horchata).
enfermedad(diviesos).
enfermedad(solitaria).
sintoma_enfermedad(diviesos, dolor).
sintoma_enfermedad(diviesos, inflamacion).
sintoma_enfermedad(solitaria,malestar_estomacal).
sintoma_enfermedad(solitaria, nauseas).
sintoma_enfermedad(solitaria, perdida_apetito).
trata_enfermedad(amate, reumatismo).
trata_enfermedad(amate, diviesos).
trata_enfermedad(amate, solitaria).
trata_enfermedad(amate, inflamacion).
trata_enfermedad(amate, infecciones_leves).
accion_efecto_planta(amate, antiparasitario).
accion_efecto_planta(amate, antiinflamatorio).
modo_tratamiento(amate, beber_una_taza_cada_8_horas).
precaucion_planta(amate, puede_irritar_la_piel).
medicamento(amate, extracto_de_ficus).
elementos(amate, [flavonoides, taninos, agua]).
imagen_planta(amate,'imgs/amate.jpg').

% Pagina 52. anis
planta(anis).
nombre_cientifico(anis, pimpinella_anisum).
continente_origen(anis, Asia).
pais_origen(anis, Region_del_mediterraneo).
modo_preparacion(anis, infusion).
enfermedad(colitis).
sintoma_enfermedad(colitis, diarrea).
sintoma_enfermedad(colitis, dolor_abdominal).
sintoma_enfermedad(colitis, sangre_en_heces).
trata_enfermedad(anis,colitis_leve).
trata_enfermedad(anis, indigestion).
trata_enfermedad(anis, flatulencias).
trata_enfermedad(anis, colicos).
trata_enfermedad(anis, tos).
trata_enfermedad(anis, bronquitis).
accio_efecta_planta(anis, carminativo).
accion_efecto_planta(anis, expectorante).
medicamento(anis, aceite_esencial_de_anis).
elementos(anis, [anetol, aceites_esenciales, agua]).
imagen_planta(anis,'imgs/anis.jpg').

% Pagina 53. Anacahuite
planta(anacahuite).
nombre_cientifico(anacahuite, cordia_boissieri).
continente_origen(anacahuite, America).
pais_origen(anacahuite, Mexico).
modo_preparacion(anacahuite, cocimiento).
trata_enfermedad(anacahuite, bronquitis).
trata_enfermedad(anacahuite, tos).
trata_enfermedad(anacahuite, pulmones).
trata_enfermedad(anacahuite, resfriado).
accion_efecto_planta(anacahuite, expectorante).
accion_efecto_planta(anacahuite, balsamico).
medicamento(anacahuite, cordia_boissieri_extracto).
elementos(anacahuite, [flavonoides, taninos, agua]).
imagen_planta(anacahuite,'imgs/Anacahuite.jpg').

% Pagina 54. Arnica
planta(arnica).
nombre_cientifico(arnica, arnica_montana).
continente_origen(arnica, Europa).
pais_origen(arnica, Suiza).
trata_enfermedad(arnica, torceduras).
trata_enfermedad(arnica, moreton)
modo_preparacion(arnica, macera).
trata_enfermedad(arnica, golpes).
accion_efecto_planta(arnica, antiinflamatoria).
accion_efecto_planta(arnica, cicatrizante).
accion_efecto_planta(arnica, analgesica).
medicamento(arnica, arnicina).
elementos(arnica, [arnicina, flavonoides, aceites_esenciales, agua]).
imagen_planta(arnica,'imgs/arnica.jpg').

% Pagina 55. Barbasco
planta(barbasco).
nombre_cientifico(barbasco, jacquinia_arborea).
continente_origen(barbasco, America).
pais_origen(barbasco, Mexico).
modo_preparacion(barbasco, cocimiento).
trata_enfermedad(barbasco, verrugas).
trata_enfermedad(barbasco, tina).
trata_enfermedad(barbasco, sarna).
trata_enfermedad(barbasco, anticonceptivo).
accion_efecto_planta(barbasco, toxica).
accion_efecto_planta(barbasco, irritante).
accion_efecto_planta(barbasco, pesticida).
medicamento(barbasco, diosgenina).
elementos(barbasco, [saponinas, diosgenina, agua]).
imagen_planta(barbasco,'imgs/Barbasco.jpeg').

% Pagina 56. Belladona
planta(belladona).
nombre_cientifico(belladona, atropa_belladonna).
continente_origen(belladona, Europa).
pais_origen(belladona, Europa_central).
modo_preparacion(belladona, macera).
trata_enfermedad(belladona, espasmos).
trata_enfermedad(belladona, colicos).
trata_enfermedad(belladona, dolores_menstruales).
trata_enfermedad(belladona, asma).
trata_enfermedad(belladona, parkinson).
accion_efecto_planta(belladona, antiespasmodica).
accion_efecto_planta(belladona, analgesica).
accion_efecto_planta(belladona, sedante).
accion_efecto_planta(belladona, toxica).
medicamento(belladona, atropina).
elementos(belladona, [atropina, escopolamina, hiosciamina, agua]).
imagen_planta(belladona,'imgs/Belladona.jpeg').


% Pagina 57. berro
planta(berro).
nombre_cientifico(berro, 'Nasturtium officinale').
continente_origen(berro, Europa).
pais_origen(berro, Europa_central).
modo_preparacion(berro, infusion).
enfermedad(bronquitis).
sintoma_enfermedad(bronquitis, tos).
trata_enfermedad(berro, bronquitis).
accion_efecto_planta(berro, expectorante).
accion_efecto_planta(berro, depurativa).
modo_tratamiento(berro, tomar_te_dos_veces_dia).
precaucion_planta(berro, evitar_dosis_altas_puede_ser_irritante).
medicamento(berro, extracto_de_berro).
elementos(berro, [vitamina_c, glucosinolatos, agua]).
imagen_planta(berro,'imgs/imgberro.jpg').

% Pagina 58. boldo
planta(boldo).
nombre_cientifico(boldo, 'Peumus boldus').
continente_origen(boldo, America).
pais_origen(boldo, Chile).
modo_preparacion(boldo, infusion).
enfermedad(problemas_hepaticos).
sintoma_enfermedad(problemas_hepaticos, dolor_abdominal).
trata_enfermedad(boldo, problemas_hepaticos).
accion_efecto_planta(boldo, hepatoprotectora).
accion_efecto_planta(boldo, colagoga).
modo_tratamiento(boldo, tomar_te_despues_comidas).
precaucion_planta(boldo, evitar_uso_prolongado_embarazo).
medicamento(boldo, boldina).
elementos(boldo, [boldina, aceites_esenciales, agua]).
imagen_planta(boldo,'imgs/imgboldo.jpg').

% Pagina 59. borraja
planta(borraja).
nombre_cientifico(borraja, 'Borago officinalis').
continente_origen(borraja, Europa).
pais_origen(borraja, Mediterraneo).
modo_preparacion(borraja, infusion).
enfermedad(fiebre).
sintoma_enfermedad(fiebre, temperatura_elevada).
trata_enfermedad(borraja, fiebre).
accion_efecto_planta(borraja, sudorifica).
accion_efecto_planta(borraja, antiinflamatoria).
modo_tratamiento(borraja, tomar_te_dos_tres_veces_dia).
precaucion_planta(borraja, evitar_uso_prolongado_alcaloides_toxicos).
medicamento(borraja, aceite_de_borraja).
elementos(borraja, [acido_gama_linolenico, mucilagos, agua]).
imagen_planta(borraja,'imgs/imgborraja.jpg').

% Pagina 60. bugambilia
planta(bugambilia).
nombre_cientifico(bugambilia, 'Bougainvillea glabra').
continente_origen(bugambilia, America).
pais_origen(bugambilia, Brasil).
modo_preparacion(bugambilia, cocimiento).
enfermedad(tos).
sintoma_enfermedad(tos, irritacion_garganta).
trata_enfermedad(bugambilia, tos).
accion_efecto_planta(bugambilia, expectorante).
accion_efecto_planta(bugambilia, antitusiva).
modo_tratamiento(bugambilia, tomar_te_tres_veces_dia).
precaucion_planta(bugambilia, evitar_en_embarazo_dosis_altas).
medicamento(bugambilia, jarabe_de_bugambilia).
elementos(bugambilia, [flavonoides, saponinas, agua]).
imagen_planta(bugambilia,'imgs/imgbugambilia.jpg').

% Pagina 61.  brionia
planta(brionia).
nombre_cientifico(brionia, 'Bryonia alba').
continente_origen(brionia, Europa).
pais_origen(brionia, desconocido).
modo_preparacion(brionia, cocimiento).
enfermedad(lombrices).
sintoma_enfermedad(lombrices, molestias_abdominales).
trata_enfermedad(brionia, lombrices).
accion_efecto_planta(brionia, purgante).
accion_efecto_planta(brionia, antiparasitaria).
modo_tratamiento(brionia, tomar_te_dosis_bajas).
precaucion_planta(brionia, toxica_dosis_altas).
medicamento(brionia, extracto_de_bryonia).
elementos(brionia, [bryonina, cucurbitacinas, agua]).
imagen_planta(brionia,'imgs/imgbrionia.jpg').

% Pagina 62.  canela
planta(canela).
nombre_cientifico(canela, 'Cinnamomum verum').
continente_origen(canela, Asia).
pais_origen(canela, desconocido).
modo_preparacion(canela, infusion).
enfermedad(anemia).
sintoma_enfermedad(anemia, fatiga).
trata_enfermedad(canela, anemia).
accion_efecto_planta(canela, estimulante).
accion_efecto_planta(canela, antimicrobiana).
modo_tratamiento(canela, tomar_te_o_anadir_alimentos).
precaucion_planta(canela, alergias_coagulacion).
medicamento(canela, aceite_esencial_de_canela).
elementos(canela, [cinamaldehido, aceites_esenciales, agua]).
imagen_planta(canela,'imgs/imgcanela.jpg').

% Pagina 63.  cedron
planta(cedron).
nombre_cientifico(cedron, 'Aloysia citrodora').
continente_origen(cedron, America).
pais_origen(cedron, desconocido).
modo_preparacion(cedron, infusion).
enfermedad(tos).
sintoma_enfermedad(tos, irritacion_garganta).
trata_enfermedad(cedron, tos).
accion_efecto_planta(cedron, expectorante).
accion_efecto_planta(cedron, calmante).
modo_tratamiento(cedron, tomar_te_dos_tres_veces_dia).
precaucion_planta(cedron, presion_arterial_baja).
medicamento(cedron, aceite_esencial_de_cedron).
elementos(cedron, [citral, limoneno, aceites_esenciales, agua]).
imagen_planta(cedron,'imgs/imgcedron.jpg').

% Pagina 64.  cardo
planta(cardo_santo).
nombre_cientifico(cardo_santo, 'Cnicus benedictus').
continente_origen(cardo_santo, America).
pais_origen(cardo_santo, Mexico).
modo_preparacion(cardo_santo, cocimiento).
enfermedad(nubes_ojos).
sintoma_enfermedad(nubes_ojos, vision_nublada).
trata_enfermedad(cardo_santo, nubes_ojos).
accion_efecto_planta(cardo_santo, oftalmica).
modo_tratamiento(cardo_santo, aplicar_gotas_ojos).
precaucion_planta(cardo_santo, contacto_prolongado_ojos).
medicamento(cardo_santo, extracto_de_cardo).
elementos(cardo_santo, [cinarina, flavonoides, agua]).
imagen_planta(cardo_santo,'imgs/imgcardo.jpg').

% Pagina 65  cempasuchil
planta(cempasuchil).
nombre_cientifico(cempasuchil, 'Tagetes erecta').
continente_origen(cempasuchil, America).
pais_origen(cempasuchil, Mexico).
modo_preparacion(cempasuchil, te).
enfermedad(parasitos_intestinales).
enfermedad(tumores).
sintoma_enfermedad(parasitos_intestinales, dolor_estomago).
trata_enfermedad(cempasuchil, parasitos_intestinales).
accion_efecto_planta(cempasuchil, antiparasitario).
accion_efecto_planta(cempasuchil, tonico).
modo_tratamiento(cempasuchil, tomar_te_en_caso_de_parasitos).
precaucion_planta(cempasuchil, cocimiento_3_veces_al_dia).
medicamento(cempasuchil, extracto_de_cempasuchil).
elementos(cempasuchil, [flavonoides, aceites_esenciales, agua, carotenoides]).
imagen_planta(cempasuchil,'imgs/Cempasuchil.jpg').

% Pagina 66 chaparro amargoso
planta(chaparro_amargoso).
nombre_cientifico(chaparro_amargoso, 'Castela americana').
continente_origen(chaparro_amargoso, America).
pais_origen(chaparro_amargoso, Mexico).
modo_preparacion(chaparro_amargoso, te).
enfermedad(disenteria_amebiana).
enfermedad(diarrea).
enfermedad(flujo).
enfermedad(hemorragias_internas).
sintoma_enfermedad(disenteria_amebiana, diarrea).
sintoma_enfermedad(disenteria_amebiana, dolor_estomago).
trata_enfermedad(chaparro_amargoso, disenteria_amebiana).
trata_enfermedad(chaparro_amargoso, diarrea).
trata_enfermedad(chaparro_amargoso, flujo).
trata_enfermedad(chaparro_amargoso, hemorragias_internas).
accion_efecto_planta(chaparro_amargoso, antiseptico).
modo_tratamiento(chaparro_amargoso, tomar_te_hojas_y_corteza_2_veces_dia).
precaucion_planta(chaparro_amargoso, 'En disenterIa crOnica usar como lavativa').
medicamento(chaparro_amargoso, castelina).
elementos(chaparro_amargoso, [alcaloides, taninos, agua]).
imagen_planta(chaparro_amargoso, 'imgs/Chaparro amargoso.jpg').

% Pagina 67 chicalote
planta(chicalote).
nombre_cientifico(chicalote, 'Argemone aecholtzia').
continente_origen(chicalote, America).
pais_origen(chicalote, Mexico).
modo_preparacion(chicalote, cocimiento).
enfermedad(tos).
enfermedad(asma).
enfermedad(tosferina).
enfermedad(epilepsia).
enfermedad(artritis).
enfermedad(insomnio).
enfermedad(ansiedad).
enfermedad(colicos_hepaticos).
enfermedad(colicos_renales).
enfermedad(colicos_intestinales).
enfermedad(carnosidad_ojos).
sintoma_enfermedad(insomnio, nerviosismo).
sintoma_enfermedad(ansiedad, desesperacion).
trata_enfermedad(chicalote, tos).
trata_enfermedad(chicalote, asma).
trata_enfermedad(chicalote, tosferina).
trata_enfermedad(chicalote, epilepsia).
trata_enfermedad(chicalote, artritis).
trata_enfermedad(chicalote, insomnio).
trata_enfermedad(chicalote, ansiedad).
trata_enfermedad(chicalote, colicos_hepaticos).
trata_enfermedad(chicalote, colicos_renales).
trata_enfermedad(chicalote, colicos_intestinales).
accion_efecto_planta(chicalote, antiespasmodico).
accion_efecto_planta(chicalote, hipnotico).
accion_efecto_planta(chicalote, sedante).
modo_tratamiento(chicalote, cocimiento_2_veces_al_dia).
modo_tratamiento(chicalote, aplicar_leche_directamente_en_ojos_en_casos_de_carnosidad).
precaucion_planta(chicalote, 'Es un poco toxica, usar con cuidado').
medicamento(chicalote, extracto_de_chicalote).
elementos(chicalote, [alkaloides, flavonoides, agua]).
imagen_planta(chicalote, 'imgs/Chicalote.jpg').

% Pagina 68 chile
planta(chile).
nombre_cientifico(chile, 'Capsicum annuum').
continente_origen(chile, America).
pais_origen(chile, Mexico).
modo_preparacion(chile, compresas_calientes).
enfermedad(asma).
enfermedad(reumatismo).
sintoma_enfermedad(asma, dificultad_respiratoria).
sintoma_enfermedad(reumatismo, dolor_articular).
trata_enfermedad(chile, asma).
trata_enfermedad(chile, reumatismo).
accion_efecto_planta(chile, antiinflamatorio).
accion_efecto_planta(chile, rubefaciente).
modo_tratamiento(chile, aplicar_hojas_en_pecho_para_el_asma).
modo_tratamiento(chile, aplicar_panios_calientes_con_cocimiento_para_reumatismo).
precaucion_planta(chile, 'No debe darse a ninos; puede irritar mucosas, diarrear, inflamar hiAgado y hemorroides').
medicamento(chile, capsaicina).
elementos(chile, [capsaicina, flavonoides, agua]).
imagen_planta(chile, 'imgs/Chile.jpg').

% Pagina 69 chichigua
planta(chichigua).
nombre_cientifico(chichigua, solanum_mammosum).
continente_origen(chichigua, America).
pais_origen(chichigua, Mexico).
modo_preparacion(chichigua, decoccion).
enfermedad(dermatitis).
enfermedad(inflamacion).
enfermedad(resfriado).
sintoma_enfermedad(dermatitis, erupcion_cutanea).
sintoma_enfermedad(inflamacion, hinchazon).
sintoma_enfermedad(resfriado, constipado).
trata_enfermedad(chichigua, dermatitis).
trata_enfermedad(chichigua, inflamacion).
accion_efecto_planta(chichigua, antiinflamatorio).
accion_efecto_planta(chichigua, antiseptico).
modo_tratamiento(chichigua, uso_topico_dos_veces_dia).
precaucion_planta(chichigua, toxica_si_se_ingiere).
medicamento(chichigua, solasodina).
elementos(chichigua, [solasodina, solasonina, agua]).
imagen_planta(chichigua, 'imgs/chichigua.jpg').

% Pagina 70 cilantro
planta(cilantro).
nombre_cientifico(cilantro, coriandrum_sativum).
continente_origen(cilantro, Asia).
pais_origen(cilantro, Iran).
modo_preparacion(cilantro, infusion).
enfermedad(problemas_digestivos).
enfermedad(ansiedad).
sintoma_enfermedad(problemas_digestivos, colicos).
sintoma_enfermedad(ansiedad, nerviosismo).
trata_enfermedad(cilantro, problemas_digestivos).
trata_enfermedad(cilantro, ansiedad).
accion_efecto_planta(cilantro, carminativo).
accion_efecto_planta(cilantro, relajante).
modo_tratamiento(cilantro, dos_veces_dia).
precaucion_planta(cilantro, evitar_en_embarazo_excesivo).
medicamento(cilantro, aceite_esencial_de_cilantro).
elementos(cilantro, [aceites_esenciales, flavonoides, agua]).
imagen_planta(cilantro, 'imgs/cilantro.jpeg').

% Pagina 71 cocolmeca
planta(cocolmeca).
nombre_cientifico(cocolmeca, smilax_spinosa).
continente_origen(cocolmeca, America).
pais_origen(cocolmeca, Mexico).
modo_preparacion(cocolmeca, decoccion).
enfermedad(reumatismo).
enfermedad(acne).
enfermedad(anemia).
sintoma_enfermedad(reumatismo, dolor_articular).
sintoma_enfermedad(acne, inflamacion_piel).
sintoma_enfermedad(anemia, dolor_pecho).
trata_enfermedad(cocolmeca, reumatismo).
trata_enfermedad(cocolmeca, acne).
accion_efecto_planta(cocolmeca, depurativo).
accion_efecto_planta(cocolmeca, antiinflamatorio).
modo_tratamiento(cocolmeca, una_vez_dia).
precaucion_planta(cocolmeca, no_usar_por_periodos_prolongados).
medicamento(cocolmeca, extracto_de_cocolmeca).
elementos(cocolmeca, [saponinas, flavonoides, agua]).
imagen_planta(cocolmeca, 'imgs/cocolmeca.jpg').

% Pagina 72 cola de caballo
planta(cola_de_caballo).
nombre_cientifico(cola_de_caballo, equisetum_arvensis).
continente_origen(cola_de_caballo, Europa).
pais_origen(cola_de_caballo, Francia).
modo_preparacion(cola_de_caballo, infusion).
enfermedad(retencion_liquidos).
enfermedad(calculos_renales).
sintoma_enfermedad(retencion_liquidos, hinchazon).
sintoma_enfermedad(calculos_renales, dolor_renal).
trata_enfermedad(cola_de_caballo, retencion_liquidos).
trata_enfermedad(cola_de_caballo, calculos_renales).
accion_efecto_planta(cola_de_caballo, diuretico).
accion_efecto_planta(cola_de_caballo, remineralizante).
modo_tratamiento(cola_de_caballo, una_a_dos_veces_dia).
precaucion_planta(cola_de_caballo, evitar_en_insuficiencia_renal).
medicamento(cola_de_caballo, equisetina).
elementos(cola_de_caballo, [silicio, flavonoides, agua]).
imagen_planta(cola_de_caballo,'imgs/colacaballo.jpg').

%  Pagina 73 Colchino (Argemone mexicana)
planta(colchino).
nombre_cientifico(colchino, 'Argemone mexicana').
pais_origen(colchino, Mexico).
trata(colchino, dolor_estomacal).
trata(colchino, parasitos).
trata(colchino, problemas_hepaticos).
sintoma(dolor_estomacal, dolor_abdominal).
sintoma(parasitos, comezon_anal).
sintoma(parasitos, dolor_abdominal).
sintoma(problemas_hepaticos, color_amarillo_en_la_piel).
efecto(colchino, analgesico).
efecto(colchino, antiparasitario).
efecto(colchino, hepatoprotector).
preparacion(colchino, infusion_de_hojas).
precaucion(colchino, dosis_alta_toxica).
tratamiento(colchino, tomar_taza_infusion_dos_veces_al_dia_por_5_dias).
medicamento(colchino, argemone_mexicana_extracto).
elementos(colchino, [alcaloides, flavonoides, agua]).
imagen_planta(colchino,'imgs/Colchino.png').

%  Pagina 74 Comino (Cuminum cyminum)
planta(comino).
nombre_cientifico(comino, 'Cuminum cyminum').
continente_origen(comino, Asia).
trata(comino, indigestion).
trata(comino, flatulencia).
trata(comino, colico_menstrual).
sintoma(indigestion, pesadez_estomacal).
sintoma(flatulencia, gases).
sintoma(colico_menstrual, dolor_abdominal).
efecto(comino, carminativo).
efecto(comino, antiespasmodico).
efecto(comino, digestivo).
preparacion(comino, infusion_de_semillas).
precaucion(comino, evitar_en_embarazo).
tratamiento(comino, tomar_taza_infusion_tras_comidas).
medicamento(comino, aceite_esencial_de_comino).
elementos(comino, [cuminaldehido, aceites_esenciales, agua]).
imagen_planta(comino,'imgs/Comino.jpg').

%  Pagina 75 Colpachi (Croton glabellus)
planta(colpachi).
nombre_cientifico(colpachi, 'Croton glabellus').
pais_origen(colpachi, Mexico).
trata(colpachi, sarampion).
trata(colpachi, afecciones_de_la_piel).
trata(colpachi, fiebre).
sintoma(sarampion, fiebre).
sintoma(sarampion, manchas_rojas).
sintoma(afecciones_de_la_piel, irritacion).
sintoma(fiebre, temperatura_alta).
efecto(colpachi, antipiretico).
efecto(colpachi, antiseptico).
efecto(colpachi, dermatologico).
preparacion(colpachi, decoccion_de_corteza).
precaucion(colpachi, evitar_en_lactancia).
tratamiento(colpachi, aplicar_infusion_tibia_en_piel_2_veces_al_dia).
medicamento(colpachi, croton_extracto).
elementos(colpachi, [diterpenos, aceites_esenciales, agua]).
imagen_planta(colpachi,'imgs/Colpachi.jpg').

%  Pagina 76 Cuachalalate (Amphipterygium adstringens)
planta(cuachalalate).
nombre_cientifico(cuachalalate, 'Amphipterygium adstringens').
pais_origen(cuachalalate, Mexico).
trata(cuachalalate, ulceras).
trata(cuachalalate, infecciones_gastrointestinales).
trata(cuachalalate, problemas_bucales).
sintoma(ulceras, dolor_interno).
sintoma(infecciones_gastrointestinales, diarrea).
sintoma(problemas_bucales, inflamacion_encias).
efecto(cuachalalate, cicatrizante).
efecto(cuachalalate, astringente).
efecto(cuachalalate, antiinflamatorio).
preparacion(cuachalalate, infusion_o_decoccion_de_corteza).
precaucion(cuachalalate, no_uso_prolongado).
tratamiento(cuachalalate, tomar_infusion_3_veces_al_dia_tras_las_comidas).
medicamento(cuachalalate, amphipterygium_extracto).
elementos(cuachalalate, [taninos, triterpenos, agua]).
imagen_planta(cuachalalate,'imgs/cuachalalate.jpeg').

% Pagina 77 cuajiote
planta(cuajiote).
nombre_cientifico(cuajiote, bursera_morelense).
continente_origen(cuajiote, America).
pais_origen(cuajiote, Mexico).
modo_preparacion(cuajiote, infusion).
enfermedad(anasarca).
enfermedad(estrenimiento_cronico).
sintoma_enfermedad(anasarca, hinchazon_generalizada).
sintoma_enfermedad(estrenimiento_cronico, estrenimiento).
trata_enfermedad(cuajiote, anasarca).
trata_enfermedad(cuajiote, estrenimiento_cronico).
accion_efecto_planta(cuajiote, laxante).
modo_tratamiento(cuajiote, uso_moderado_no_mas_de_3_dias).
precaucion_planta(cuajiote, puede_provocar_gastroenteritis).
precaucion_planta(cuajiote, puede_provocar_rectitis).
precaucion_planta(cuajiote, puede_provocar_enterocolitis).
medicamento(cuajiote, bursera_extracto).
elementos(cuajiote, [resinas, aceites_esenciales, agua]).
imagen_planta(cuajiote,'imgs/Cuajiote.jpg').

% Pagina 78 cuasia
planta(cuasia).
nombre_cientifico(cuasia, quassia_amara).
continente_origen(cuasia, America).
pais_origen(cuasia, Costa_rica).
pais_origen(cuasia, Nicaragua).
pais_origen(cuasia, Panama).
pais_origen(cuasia, Brasil).
pais_origen(cuasia, Peru).
pais_origen(cuasia, Venezuela).
pais_origen(cuasia, Surinam).
pais_origen(cuasia, Colombia).
pais_origen(cuasia, Argentina).
pais_origen(cuasia, Guayana_francesa).
pais_origen(cuasia, Guyana).
pais_origen(cuasia, Mexico).
modo_preparacion(cuasia, infusion).
enfermedad(diabetes).
enfermedad(artritis).
enfermedad(reumatismo).
enfermedad(dolor_corporal).
enfermedad(migrana).
enfermedad(dolor_de_estomago).
sintoma_enfermedad(diabetes, mucha_sed).
sintoma_enfermedad(diabetes, fatiga).
sintoma_enfermedad(diabetes, nivel_alto_de_glucosa).
sintoma_enfermedad(artritis, dolor_articular).
sintoma_enfermedad(artritis, inflamacion).
sintoma_enfermedad(reumatismo, rigidez_articular).
sintoma_enfermedad(reumatismo, hinchazon).
sintoma_enfermedad(dolor_corporal, dolor).
sintoma_enfermedad(migrana, dolor_de_cabeza).
sintoma_enfermedad(dolor_de_estomago, nausea).
sintoma_enfermedad(dolor_de_estomago, dolor_de_estomago).
trata_enfermedad(cuasia, diabetes).
trata_enfermedad(cuasia, artritis).
trata_enfermedad(cuasia, reumatismo).
trata_enfermedad(cuasia, dolor_corporal).
trata_enfermedad(cuasia, migrana).
trata_enfermedad(cuasia, dolor_de_estomago).
accion_efecto_planta(cuasia, analgesico).
accion_efecto_planta(cuasia, antiinflamatorio).
accion_efecto_planta(cuasia, hipoglucemiante).
modo_tratamiento(cuasia, una_taza_por_dia).
precaucion_planta(cuasia, puede_provocar_irritacion_gastrica).
precaucion_planta(cuasia, puede_provocar_vomito).
precaucion_planta(cuasia, puede_provocar_estupor).
medicamento(cuasia, quassina).
elementos(cuasia, [quassina, alcaloides, agua]).
imagen_planta(cuasia,'imgs/Cuasia.jpg')

% Pagina 79 damiana
planta(damiana).
nombre_cientifico(damiana, turnera_diffusa).
continente_origen(damiana, America).
pais_origen(damiana, Mexico).
modo_preparacion(damiana, infusion).
enfermedad(hipersexualidad).
enfermedad(alcoholismo).
enfermedad(diabetes).
enfermedad(nefritis).
enfermedad(orquitis).
enfermedad(males_de_la_vejiga).
sintoma_enfermedad(hipersexualidad, ansiedad).
sintoma_enfermedad(hipersexualidad, impulsos_sexuales_intensos).
sintoma_enfermedad(hipersexualidad, carencia_de_control_de_deseos).
sintoma_enfermedad(alcoholismo, ansiedad).
sintoma_enfermedad(alcoholismo, deseo_de_beber).
sintoma_enfermedad(alcoholismo, tolerancia_alcoholica).
sintoma_enfermedad(alcoholismo, perdida_del_control).
sintoma_enfermedad(diabetes, mucha_sed).
sintoma_enfermedad(diabetes, nivel_alto_de_glucosa).
sintoma_enfermedad(nefritis, dolor_en_rinones).
sintoma_enfermedad(nefritis, sangre_en_orina).
sintoma_enfermedad(orquitis, hinchazon_en_testiculos).
sintoma_enfermedad(orquitis, dolor_al_orinar).
sintoma_enfermedad(males_de_la_vejiga, dolor_al_orinar).
sintoma_enfermedad(males_de_la_vejiga, urgencia_frecuente).
trata_enfermedad(damiana, hipersexualidad).
trata_enfermedad(damiana, alcoholismo).
trata_enfermedad(damiana, diabetes).
trata_enfermedad(damiana, nefritis).
trata_enfermedad(damiana, orquitis).
trata_enfermedad(damiana, males_de_la_vejiga).
accion_efecto_planta(damiana, relajante).
accion_efecto_planta(damiana, diuretico).
accion_efecto_planta(damiana, antiinflamatorio).
modo_tratamiento(damiana, de_una_a_dos_tazas_al_dia).
precaucion_planta(damiana, puede_provocar_insomnio).
precaucion_planta(damiana, puede_provocar_irritacion_gastrica).
medicamento(damiana, turnera_diffusa_extracto).
elementos(damiana, [damianina, flavonoides, agua]).
imagen_planta(damiana,'imgs/Damiana.jpg').

%Pagina 80 diente_de_leon
planta(diente_de_leon).
nombre_cientifico(diente_de_leon, taraxacum_officinale).
continente_origen(diente_de_leon, Europa).
continente_origen(diente_de_leon, Asia).
pais_origen(diente_de_leon, Francia).
pais_origen(diente_de_leon, Alemania).
pais_origen(diente_de_leon, Espana).
pais_origen(diente_de_leon, Italia).
pais_origen(diente_de_leon, Reino_Unido).
pais_origen(diente_de_leon, Rusia).
pais_origen(diente_de_leon, China).
pais_origen(diente_de_leon, Japon).
modo_preparacion(diente_de_leon, infusion).
enfermedad(anemia).
enfermedad(acumulacion_de_toxinas).
sintoma_enfermedad(anemia, debilidad).
sintoma_enfermedad(acumulacion_de_toxinas, toxinas_en_rinon).
sintoma_enfermedad(acumulacion_de_toxinas, toxinas_en_higado).
sintoma_enfermedad(acumulacion_de_toxinas, urea_en_sangre).
trata_enfermedad(diente_de_leon, anemia).
trata_enfermedad(diente_de_leon, acumulacion_de_toxinas).
accion_efecto_planta(diente_de_leon, aperitivo).
accion_efecto_planta(diente_de_leon, depurativo).
accion_efecto_planta(diente_de_leon, laxante).
accion_efecto_planta(diente_de_leon, colagogo).
accion_efecto_planta(diente_de_leon, diuretico).
accion_efecto_planta(diente_de_leon, alimenticio).
modo_tratamiento(diente_de_leon, te_tomado_en_ayunas).
precaucion_planta(diente_de_leon, puede_provocar_diarrea).
precaucion_planta(diente_de_leon, puede_provocar_acidez_estomacal).
precaucion_planta(diente_de_leon, puede_provocar_dolor_abdominal).
precaucion_planta(diente_de_leon, puede_provocar_gases).
medicamento(diente_de_leon, taraxacina).
elementos(diente_de_leon, [taraxacina, inulina, agua]).
imagen_planta(diente_de_leon,'imgs/Diente_De_Leon.jpg').

% Pagina 81.  digitaria
planta(digitaria).
nombre_cientifico(digitaria, 'Digitalis purpurea').
continente_origen(digitaria, Europa).
pais_origen(digitaria, desconocido).
modo_preparacion(digitaria, infusion).
enfermedad(miocarditis).
enfermedad(astenia).
enfermedad(epilepsia).
sintoma_enfermedad(miocarditis, dolor_toracico).
sintoma_enfermedad(astenia, fatiga).
sintoma_enfermedad(epilepsia, convulsiones).
trata_enfermedad(digitaria, miocarditis).
trata_enfermedad(digitaria, astenia).
trata_enfermedad(digitaria, epilepsia).
accion_efecto_planta(digitaria, cardiotonica).
modo_tratamiento(digitaria, tomar_te_supervision_medica).
precaucion_planta(digitaria, toxica_dosis_altas).
medicamento(digitaria, digitalina).
elementos(digitaria, [glucosidos_cardioactivos, agua]).
imagen_planta(digitaria,'imgs/imgdigitaria.jpg').

% Pagina 82.  doradilla
planta(doradilla).
nombre_cientifico(doradilla, 'Ceterach officinarum').
continente_origen(doradilla, America).
pais_origen(doradilla, desconocido).
modo_preparacion(doradilla, cocimiento).
enfermedad(nefritis).
sintoma_enfermedad(nefritis, dolor_renal).
trata_enfermedad(doradilla, nefritis).
accion_efecto_planta(doradilla, diuretica).
accion_efecto_planta(doradilla, desinflamatoria).
modo_tratamiento(doradilla, tomar_te_una_dos_veces_dia).
precaucion_planta(doradilla, evitar_exceso_irritacion_renal).
medicamento(doradilla, ceterach_extracto).
elementos(doradilla, [flavonoides, taninos, agua]).
imagen_planta(doradilla,'imgs/imgdoradilla.jpg').

% Pagina 83.  epazote
planta(epazote).
nombre_cientifico(epazote, 'Dysphania ambrosioides').
continente_origen(epazote, America).
pais_origen(epazote, desconocido).
modo_preparacion(epazote, cocimiento).
enfermedad(lombrices).
sintoma_enfermedad(lombrices, molestias_abdominales).
trata_enfermedad(epazote, lombrices).
accion_efecto_planta(epazote, antiparasitaria).
accion_efecto_planta(epazote, carminativa).
modo_tratamiento(epazote, tomar_te_una_vez_dia).
precaucion_planta(epazote, evitar_embarazo_ninos).
medicamento(epazote, ascaridol).
elementos(epazote, [ascaridol, aceites_esenciales, agua]).
imagen_planta(epazote,'imgs/imgepazote.jpg').

% Pagina 84.  enebro
planta(enebro).
nombre_cientifico(enebro, 'Juniperus communis').
continente_origen(enebro, Europa).
pais_origen(enebro, desconocido).
modo_preparacion(enebro, infusion).
enfermedad(leucorrea).
sintoma_enfermedad(leucorrea, flujo_anormal).
trata_enfermedad(enebro, leucorrea).
accion_efecto_planta(enebro, antiseptica).
accion_efecto_planta(enebro, diuretica).
modo_tratamiento(enebro, tomar_te_o_lavados_externos).
precaucion_planta(enebro, evitar_problemas_renales_embarazo).
medicamento(enebro, aceite_esencial_de_enebro).
elementos(enebro, [terpenos, aceites_esenciales, agua]).
imagen_planta(enebro,'imgs/imgenebro.jpg').

% Pagina 85. Estafiate
planta(estafiate).
nombre_cientifico(estafiate, 'Artemisia ludoviciana').
continente_origen(estafiate, 'America').
pais_origen(estafiate, 'Mexico').
modo_preparacion(estafiate, 'infusion').
enfermedad(empacho).
enfermedad('dolor estomacal').
sintoma_enfermedad(empacho, 'pesadez en el estomago').
sintoma_enfermedad('dolor estomacal', 'ardor').
trata_enfermedad(estafiate, empacho).
trata_enfermedad(estafiate, 'dolor estomacal').
accion_efecto_planta(estafiate, digestivo).
accion_efecto_planta(estafiate, antiparasitario).
modo_tratamiento(estafiate, 'una taza despues de los alimentos').
precaucion_planta(estafiate, embarazo).
medicamento(estafiate, artemisina).
elementos(estafiate, [artemisinina, aceites_esenciales, agua]).
imagen_planta(estafiate,'imgs/estafiate.jpg').

% Pagina 86. Eucalipto
planta(eucalipto).
nombre_cientifico(eucalipto, 'Eucalyptus globulus').
continente_origen(eucalipto, 'Oceania').
pais_origen(eucalipto, 'Australia').
modo_preparacion(eucalipto, 'vaporizacion').
enfermedad(gripe).
enfermedad(resfriado).
sintoma_enfermedad(gripe, fiebre).
sintoma_enfermedad(resfriado, 'congestion nasal').
trata_enfermedad(eucalipto, gripe).
trata_enfermedad(eucalipto, resfriado).
accion_efecto_planta(eucalipto, expectorante).
accion_efecto_planta(eucalipto, antiseptico).
modo_tratamiento(eucalipto, 'inhalar vapor 2 veces al dia').
precaucion_planta(eucalipto, 'no ingerir aceite esencial puro').
medicamento(eucalipto, eucaliptol).
elementos(eucalipto, [eucaliptol, taninos, agua]).
imagen_planta(eucalipto,'imgs/eucalipto.png').

% Pagina 87. Fenogreco
planta(fenogreco).
nombre_cientifico(fenogreco, 'Trigonella foenum-graecum').
continente_origen(fenogreco, 'Asia').
pais_origen(fenogreco, 'India').
modo_preparacion(fenogreco, 'cocimiento').
enfermedad(diabetes).
enfermedad(colesterol).
sintoma_enfermedad(diabetes, 'sed excesiva').
sintoma_enfermedad(colesterol, 'dolor en el pecho').
trata_enfermedad(fenogreco, diabetes).
trata_enfermedad(fenogreco, colesterol).
accion_efecto_planta(fenogreco, hipoglucemiante).
accion_efecto_planta(fenogreco, hipolipemiante).
modo_tratamiento(fenogreco, 'una taza en ayunas').
precaucion_planta(fenogreco, 'no usar en embarazo').
medicamento(fenogreco, trigonelina).
elementos(fenogreco, [trigonelina, saponinas, agua]).
imagen_planta(fenogreco,'imgs/fenogreco.jpg').

% P�gina 88. Genciana
planta(genciana).
nombre_cientifico(genciana, 'Gentiana lutea').
continente_origen(genciana, 'Europa').
pais_origen(genciana, 'Francia').
modo_preparacion(genciana, 'maceracion').
enfermedad(anemia).
enfermedad(indigestion).
sintoma_enfermedad(anemia, 'fatiga').
sintoma_enfermedad(indigestion, 'hinchazon').
trata_enfermedad(genciana, anemia).
trata_enfermedad(genciana, indigestion).
accion_efecto_planta(genciana, estimulante).
accion_efecto_planta(genciana, tonico).
modo_tratamiento(genciana, 'media taza antes de las comidas').
precaucion_planta(genciana, 'evitar en ulcera gastricas').
medicamento(genciana, amarogentina).
elementos(genciana, [amarogentina, gentiopicrina, agua]).
imagen_planta(genciana,'imgs/genciana.jpg').

% Pagina 89. Geranio
planta(geranio).
nombre_cientifico(geranio, 'Pelargonium graveolens').
continente_origen(geranio, 'Africa').
pais_origen(geranio, 'Sudafrica').
modo_preparacion(geranio, 'infusion').
enfermedad(estres).
enfermedad(insomnio).
sintoma_enfermedad(estres, 'tension muscular').
sintoma_enfermedad(insomnio, 'dificultad para dormir').
trata_enfermedad(geranio, estres).
trata_enfermedad(geranio, insomnio).
accion_efecto_planta(geranio, relajante).
accion_efecto_planta(geranio, ansiolitico).
modo_tratamiento(geranio, 'una taza antes de dormir').
precaucion_planta(geranio, 'posible irritacion cutanea').
medicamento(geranio, aceite_esencial_de_geranio).
elementos(geranio, [geraniol, citronelol, agua]).
imagen_planta(geranio,'imgs/geranio.jpg').

% 90 Girasol
planta(girasol).
nombre_cientifico(girasol, 'Helianthus annuus').
continente_origen(girasol, 'America').
pais_origen(girasol, 'Mexico').
modo_preparacion(girasol, 'infusion').
enfermedad(fiebre).
trata_enfermedad('presion alta').
trata_enfermedad('fiebre').
accion_efecto_planta(girasol, 'diuretico').
accion_efecto_planta(girasol, 'antiinflamatorio').
modo_tratamiento(girasol, 'Te diario o compresas').
precaucion_planta(girasol, exceso).
medicamento(girasol, aceite_de_girasol).
elementos(girasol, [acidos_grasos, vitamina_e, agua]).
imagen_planta(girasol,'imgs/girasol.jpg').

% 91 Gingseng
planta(gingseng).
nombre_cientifico(gingseng, 'Panax ginseng').
continente_origen(gingseng, 'Asia').
pais_origen(gingseng,'China').
modo_preparacion(gingseng, infusion).
enfermedad('Fatiga').
sintoma_enfermedad('Fatiga','cansancio').
sintoma_enfermedad('Fatiga','debilidad').
trata_enfermedad(gingseng,'Diabetes').
accion_efecto_planta(gingseng,'estimulante').
accion_efecto_planta(gingseng,'adaptogeno').
modo_tratamiento(gingseng,infusion).
precaucion_planta(gingseng,hipertension).
precaucion_planta(gingseng,embarazo).
medicamento(gingseng, ginsenocidos).
elementos(gingseng, [ginsenocidos, polisacaridos, agua]).
imagen_planta(gingseng,'imgs/gingseng.jpg').

% 92 gordolobo
planta(gordolobo).
nombre_cientifico(gordolobo, 'Verbascum thapsus').
continente_origen(gordolobo,'Europa').
pais_origen(gordolobo, 'Alemania').
modo_preparacion(gordolobo,'infusion').
enfermedad(tos).
enfermedad(bronquitis).
sintoma_enfermedad(bronquitis,'flemas').
sintoma_enfermedad(bronquitis,'congestion').
trata_enfermedad(gordolobo, 'bronquitis').
trata_enfermedad(gordolobo, 'tos').
accion_efecto_planta(gordolobo, expectorante).
accion_efecto_planta(gordolobo, antiinflamatorio).
modo_tratamiento(gordolobo, 'Te 2-3 veces al dia').
precaucion_planta(gordolobo, infusion).
medicamento(gordolobo, verbascosaponina).
elementos(gordolobo, [saponinas, mucilagos, agua]).
imagen_planta(gordolobo,'imgs/gordolobo.jpg').

% 93 grama
planta(grama).
nombre_cientifico(grama, 'Cynodon dactylon').
continente_origen(grama, 'Africa').
pais_origen(grama,'Egipto').
modo_preparacion(grama,'coccion').
enfermedad('Infecciones urinarias').
sintoma_enfermedad('Infecciones urinarias','Ardor al oriniar').
trata_enfermedad(grama,'cistiis').
accion_efecto_planta(grama,'diuretico').
accion_efecto_planta(grama,'depurativo').
modo_tratamiento(grama, 'Te o jarabe').
precaucion_planta(grama, embarazo).
medicamento(grama, cynodon_extracto).
elementos(grama, [flavonoides, aceites_esenciales, agua]).
imagen_planta(grama,'imgs/grama.jpg').

% 94 granado
planta(granado).
nombre_cientifico(granado, 'Punica granatum').
continente_origen(granado, 'Asia').
pais_origen(granado, 'India').
modo_preparacion(granado, infusion).
enfermedad('Parasitos intestinales').
sintoma_enfermedad('Parasitos intestinales', 'Dolor abdominal').
trata_enfermedad(granado, 'Disenteria').
accion_efecto_planta(granado, 'astringente').
accion_efecto_planta(granado, 'antiparasitario').
modo_tratamiento(granado,'Te o enjuague bucal').
precaucion_planta(granado, 'estrenimiento').
medicamento(granado, punicina).
elementos(granado, [taninos, alcaloides, agua]).
imagen_planta(granado,'imgs/granado.jpg').

% Pagina 95 guaco
planta(guaco).
nombre_cientifico(guaco, 'Aristolochia odoratissima').
modo_preparacion(guaco, 'infusion cada 3 horas o cataplasma').
enfermedad(alergia).
enfermedad(vitiligo).
enfermedad(asma).
trata_enfermedad(guaco, alergia).
trata_enfermedad(guaco, vitiligo).
trata_enfermedad(guaco, asma).
accion_efecto_planta(guaco, antiinflamatorio).
accion_efecto_planta(guaco, broncodilatador).
modo_tratamiento(guaco, infusion_o_aplicacion_externa).
precaucion_planta(guaco, uso_prolongado).
medicamento(guaco, cumarina).
elementos(guaco, [cumarina, flavonoides, agua]).
imagen_planta(guaco,'imgs/guaco.jpg').

% Pagina 96 guazuma
planta(guazuma).
nombre_cientifico(guazuma, 'Guazuma ulmifolia').
modo_preparacion(guazuma, 'infusion de hojas').
enfermedad(disenteria).
enfermedad(diarrea).
enfermedad(inflamacion_intestinal).
trata_enfermedad(guazuma, disenteria).
trata_enfermedad(guazuma, diarrea).
trata_enfermedad(guazuma, inflamacion_intestinal).
accion_efecto_planta(guazuma, antidiarreico).
accion_efecto_planta(guazuma, antiinflamatorio).
modo_tratamiento(guazuma, infusion_colada_y_fria).
precaucion_planta(guazuma, alergia_hojas).
medicamento(guazuma, guazumina).
elementos(guazuma, [taninos, flavonoides, agua]).
imagen_planta(guazuma,'imgs/guazuma.jpeg').

% Pagina 97 guayacan
planta(guayacan).
nombre_cientifico(guayacan, 'Guaiacum sanctum').
modo_preparacion(guayacan, 'infusion de flores o corteza').
enfermedad(tos).
enfermedad(tuberculosis).
enfermedad(sifilis).
enfermedad(reumatismo).
trata_enfermedad(guayacan, tos).
trata_enfermedad(guayacan, tuberculosis).
trata_enfermedad(guayacan, sifilis).
trata_enfermedad(guayacan, reumatismo).
accion_efecto_planta(guayacan, expectorante).
accion_efecto_planta(guayacan, antiesifilitico).
modo_tratamiento(guayacan, infusion_5_dias_descanso_5_dias).
precaucion_planta(guayacan, interaccion_medicamentos).
medicamento(guayacan, guaiacum_resina).
elementos(guayacan, [resinas, lignanos, agua]).
imagen_planta(guayacan,'imgs/guayacan.jpg').

% Pagina 98 hamamelis
planta(hamamelis).
nombre_cientifico(hamamelis, 'Hamamelis virginica').
modo_preparacion(hamamelis, 'infusion de hojas').
enfermedad(hemorroides).
enfermedad(varices).
enfermedad(retencion_orina).
trata_enfermedad(hamamelis, hemorroides).
trata_enfermedad(hamamelis, varices).
trata_enfermedad(hamamelis, retencion_orina).
accion_efecto_planta(hamamelis, venotonico).
accion_efecto_planta(hamamelis, diuretico).
modo_tratamiento(hamamelis, infusion_15_minutos).
precaucion_planta(hamamelis, hipersensibilidad).
medicamento(hamamelis, hamamelitano).
elementos(hamamelis, [taninos, flavonoides, agua]).
imagen_planta(hamamelis,'imgs/hamamelis.jpeg').

% Pagina 99 helenio
planta(helenio).
nombre_cientifico(helenio, 'Inula helenium').
modo_preparacion(helenio, 'infusion de raiz').
enfermedad(bronquitis).
enfermedad(tos_ferina).
enfermedad(retencion_orina).
trata_enfermedad(helenio, bronquitis).
trata_enfermedad(helenio, tos_ferina).
trata_enfermedad(helenio, retencion_orina).
accion_efecto_planta(helenio, expectorante).
accion_efecto_planta(helenio, diuretico).
modo_tratamiento(helenio, infusion_diaria).
precaucion_planta(helenio, dosis_excesiva).
medicamento(helenio, inulina).
elementos(helenio, [inulina, aceites_esenciales, agua]).
imagen_planta(helenio,'imgs/helenio.jpg').


% Pagina 105 --- JENGIBRE ---
planta(jengibre).
nombre_cientifico(jengibre, 'Zingiber officinale').
continente_origen(jengibre, asia).
pais_origen(jengibre, desconocido).
parte_util(jengibre, raiz).
modo_preparacion(jengibre, tintura).
modo_preparacion(jengibre, pan).
modo_preparacion(jengibre, remedio_efervescente).
modo_tratamiento(jengibre, uso_interno).
enfermedad(cruda).
enfermedad(agotamiento_mental).
sintoma_enfermedad(cruda, malestar_general).
sintoma_enfermedad(agotamiento_mental, fatiga_cognitiva).
trata_enfermedad(jengibre, cruda).
trata_enfermedad(jengibre, agotamiento_mental).
accion_efecto_planta(jengibre, estimulante).
accion_efecto_planta(jengibre, digestiva).
precaucion_planta(jengibre, hipertension).
medicamento(jengibre, gingerol).
elementos(jengibre, [gingerol, aceites_esenciales, agua]).
imagen_planta(jengibre,'imgs/Jengibre.jpg').


% Pagina 106 --- LINAZA ---
planta(linaza).
nombre_cientifico(linaza, 'Linum usitatissimum').
continente_origen(linaza, desconocido).
pais_origen(linaza, desconocido).
parte_util(linaza, semillas).
modo_preparacion(linaza, infusion).
modo_preparacion(linaza, cataplasma).
modo_tratamiento(linaza, uso_externo).
modo_tratamiento(linaza, uso_interno).
enfermedad(estrenimiento).
enfermedad(colitis).
enfermedad(males_estomacales).
enfermedad(bronquitis).
enfermedad(hemorroides).
enfermedad(heridas).
enfermedad(abscesos).
sintoma_enfermedad(estrenimiento, dificultad_evacuacion).
sintoma_enfermedad(colitis, inflamacion_intestinal).
sintoma_enfermedad(bronquitis, tos_congestion).
sintoma_enfermedad(heridas, sangrado).
sintoma_enfermedad(abscesos, hinchazon).
trata_enfermedad(linaza, estrenimiento).
trata_enfermedad(linaza, colitis).
trata_enfermedad(linaza, males_estomacales).
trata_enfermedad(linaza, bronquitis).
trata_enfermedad(linaza, hemorroides).
trata_enfermedad(linaza, heridas).
trata_enfermedad(linaza, abscesos).
accion_efecto_planta(linaza, emoliente).
accion_efecto_planta(linaza, laxante).
precaucion_planta(linaza, embarazo).
medicamento(linaza, aceite_de_linaza).
elementos(linaza, [acidos_grasos_omega_3, mucilagos, agua]).
imagen_planta(linaza,'imgs/Linaza.jpg').


% Pagina 107 --- LLANTEN ---
planta(llanten).
nombre_cientifico(llanten, 'Plantago major').
continente_origen(llanten, desconocido).
pais_origen(llanten, desconocido).
parte_util(llanten, hojas).
modo_preparacion(llanten, infusion).
modo_preparacion(llanten, leche_hervida).
modo_tratamiento(llanten, uso_externo).
modo_tratamiento(llanten, uso_interno).
enfermedad(conjuntivitis).
enfermedad(infeccion_ojos).
enfermedad(ulceras_boca).
enfermedad(pequenas_infecciones).
enfermedad(disenteria).
enfermedad(enterocolitis).
sintoma_enfermedad(conjuntivitis, ojos_rojos).
sintoma_enfermedad(infeccion_ojos, secrecion).
sintoma_enfermedad(ulceras_boca, lesiones_bucales).
sintoma_enfermedad(disenteria, diarrea_con_sangre).
sintoma_enfermedad(enterocolitis, dolor_abdominal).
trata_enfermedad(llanten, conjuntivitis).
trata_enfermedad(llanten, infeccion_ojos).
trata_enfermedad(llanten, ulceras_boca).
trata_enfermedad(llanten, pequenas_infecciones).
trata_enfermedad(llanten, disenteria).
trata_enfermedad(llanten, enterocolitis).
accion_efecto_planta(llanten, antiinflamatoria).
accion_efecto_planta(llanten, astringente).
medicamento(llanten, plantaginina).
elementos(llanten, [aucubina, mucilagos, agua]).
imagen_planta(llanten,'imgs/Llanten.jpg').


% Pagina 108 --- MADRESELVA ---
planta(madreselva).
nombre_cientifico(madreselva, 'Lonicera japonica').
nombre_cientifico(madreselva, 'Lonicera').
continente_origen(madreselva, desconocido).
pais_origen(madreselva, desconocido).
parte_util(madreselva, flores).
modo_preparacion(madreselva, infusion).
modo_tratamiento(madreselva, uso_interno).
enfermedad(gripa).
enfermedad(tos).
enfermedad(infecciones_garganta).
sintoma_enfermedad(gripa, fiebre_y_congestion).
sintoma_enfermedad(tos, irritacion_garganta).
sintoma_enfermedad(infecciones_garganta, dolor_garganta).
trata_enfermedad(madreselva, gripa).
trata_enfermedad(madreselva, tos).
trata_enfermedad(madreselva, infecciones_garganta).
accion_efecto_planta(madreselva, expectorante).
accion_efecto_planta(madreselva, antibacteriana).
medicamento(madreselva, lonicera_extracto).
elementos(madreselva, [acido_clorogenico, flavonoides, agua]).
imagen_planta(madreselva,'imgs/Madreselva.jpg').

% Pagina 109 --- MAGUEY ---
planta(maguey).
nombre_cientifico(maguey, 'Agave').
continente_origen(maguey, america).
pais_origen(maguey, mexico).
parte_util(maguey, hojas).
modo_preparacion(maguey, cataplasma).
modo_tratamiento(maguey, uso_externo).
enfermedad(llagas).
enfermedad(infecciones_piel).
enfermedad(fiebre).
sintoma_enfermedad(llagas, heridas_abiertas).
sintoma_enfermedad(infecciones_piel, enrojecimiento).
sintoma_enfermedad(fiebre, temperatura_alta).
trata_enfermedad(maguey, llagas).
trata_enfermedad(maguey, infecciones_piel).
trata_enfermedad(maguey, fiebre).
accion_efecto_planta(maguey, cicatrizante).
accion_efecto_planta(maguey, antimicrobiana).
accion_efecto_planta(maguey, antipiretica).
medicamento(maguey, agave_extracto).
elementos(maguey, [saponinas, inulina, agua]).
imagen_planta(maguey,'imgs/Maguey.jpg').


% Pagina 100. Hierba del pollo
planta(hierba_del_pollo).
nombre_cientifico(hierba_del_pollo, 'Tradescantia zebrina').
continente_origen(hierba_del_pollo, America).
pais_origen(hierba_del_pollo, Mexico).
modo_preparacion(hierba_del_pollo, machacar).
modo_preparacion(hierba_del_pollo, infusion).
enfermedad(hemorragia).
enfermedad(problemas_renales).
sintoma_enfermedad(hemorragia, sangrado).
trata_enfermedad(hierba_del_pollo, hemorragia).
trata_enfermedad(hierba_del_pollo, problemas_renales).
accion_efecto_planta(hierba_del_pollo, hemostatico).
accion_efecto_planta(hierba_del_pollo, cicatrizante).
accion_efecto_planta(hierba_del_pollo, diuretico).
modo_tratamiento(hierba_del_pollo, aplicacion_local).
modo_tratamiento(hierba_del_pollo, tomar_te).
precaucion_planta(hierba_del_pollo, embarazo).
medicamento(hierba_del_pollo, tradescantina).
elementos(hierba_del_pollo, [flavonoides, saponinas, agua]).
imagen_planta(hierba_del_pollo,'imgs/Hierba_del_pollo.jpg').

% Pagina 101. Hinojo
planta(hinojo).
nombre_cientifico(hinojo, 'Foeniculum vulgare').
continente_origen(hinojo, Europa).
pais_origen(hinojo, Mexico).
modo_preparacion(hinojo, infusion).
enfermedad(gases).
enfermedad(flatulencias).
enfermedad(obstruccion_mucosa_pecho).
sintoma_enfermedad(gases, dolor_abdominal).
sintoma_enfermedad(flatulencias, distension_abdominal).
trata_enfermedad(hinojo, gases).
trata_enfermedad(hinojo, flatulencias).
accion_efecto_planta(hinojo, digestivo).
modo_tratamiento(hinojo, tomar_te).
precaucion_planta(hinojo, embarazo).
medicamento(hinojo, aceite_esencial_de_hinojo).
elementos(hinojo, [aceites_esenciales, flavonoides, agua]).
imagen_planta(hinojo,'imgs/Hinojo.jpg').

% Pagina 102. Jalapa (Ipomea purga)
planta(jalapa).
nombre_cientifico(jalapa, 'Ipomea purga').
continente_origen(jalapa, America).
pais_origen(jalapa, Mexico).
modo_preparacion(jalapa, cocimiento).
enfermedad(disentiria).
enfermedad(estrenimiento).
enfermedad(indigestion).
enfermedad(apoplejia).
enfermedad(congestion_cerebral).
sintoma_enfermedad(disentiria, diarrea).
sintoma_enfermedad(estrenimiento, dificultad_defecacion).
sintoma_enfermedad(indigestion, malestar_abdominal).
trata_enfermedad(jalapa, disenteria).
trata_enfermedad(jalapa, estrenimiento).
trata_enfermedad(jalapa, indigestion).
trata_enfermedad(jalapa, apoplejia).
trata_enfermedad(jalapa, congestion_cerebral).
accion_efecto_planta(jalapa, purgante).
modo_tratamiento(jalapa, tomar_en_ayunas).
medicamento(jalapa, resina_de_jalapa).
elementos(jalapa, [resinas, glucosidos, agua]).
imagen_planta(jalapa,'imgs/Jalapa.jpg').

% Pagina 103. Ipecacuana (polygala hondurana)
planta(ipecacuana).
nombre_cientifico(ipecacuana, 'Polygala hondurana').
continente_origen(ipecacuana, America).
pais_origen(ipecacuana, Mexico).
modo_preparacion(ipecacuana, infusion).
enfermedad(tos).
sintoma_enfermedad(tos, tos_seca).
trata_enfermedad(ipecacuana, tos).
accion_efecto_planta(ipecacuana, expectorante).
modo_tratamiento(ipecacuana, tomar_infusion).
medicamento(ipecacuana, emetina).
elementos(ipecacuana, [emetina, cephaelina, agua]).
imagen_planta(ipecacuana,'imgs/Ipecacuana.jpg').

% Pagina 104. Jazmin Amarillo (Gelsemium sempervirens)
planta(jazmin_amarillo).
nombre_cientifico(jazmin_amarillo, 'Gelsemium sempervirens').
continente_origen(jazmin_amarillo, America).
pais_origen(jazmin_amarillo, Mexico).
modo_preparacion(jazmin_amarillo, 'tintura').
enfermedad(dolores_de_cabeza).
enfermedad(reuma).
enfermedad(espasmos).
enfermedad(asmo_bronquial).
enfermedad(menstruacion_dolorosa).
sintoma_enfermedad(dolores_de_cabeza, dolor_intenso).
sintoma_enfermedad(reuma, dolor_articular).
sintoma_enfermedad(espasmos, contraccion_muscular).
sintoma_enfermedad(asmo_bronquial, dificultad_respiratoria).
trata_enfermedad(jazmin_amarillo, dolores_de_cabeza).
trata_enfermedad(jazmin_amarillo, reuma).
trata_enfermedad(jazmin_amarillo, espasmos).
trata_enfermedad(jazmin_amarillo, asma_bronquial).
trata_enfermedad(jazmin_amarillo, menstruacion_dolorosa).
accion_efecto_planta(jazmin_amarillo, analgesico).
accion_efecto_planta(jazmin_amarillo, antiespasmodico).
precaucion_planta(jazmin_amarillo, problemas_corazon).
precaucion_planta(jazmin_amarillo, 'problemas_rinones').
modo_tratamiento(jazmin_amarillo, tomar_tintura).
medicamento(jazmin_amarillo, gelsemina).
elementos(jazmin_amarillo, [gelsemina, alcaloides, agua]).
imagen_planta(jazmin_amarillo,'imgs/Jazmin_amarillo.jpg').

% Pagina 110.  maiz
planta(maiz).
nombre_cientifico(maiz, 'Zea mays').
continente_origen(maiz, America).
pais_origen(maiz, Mexico).
modo_preparacion(maiz, infusion).
modo_preparacion(maiz, cataplasma).
modo_preparacion(maiz, consumo_directo).
enfermedad(problemas_renales).
enfermedad(hipertension).
enfermedad(problemas_digestivos).
enfermedad(inflamacion).
enfermedad(diabetes).
sintoma_enfermedad(problemas_renales, dolor_espalda_baja).
sintoma_enfermedad(hipertension, presion_alta).
sintoma_enfermedad(problemas_digestivos, dolor_estomago).
sintoma_enfermedad(inflamacion, hinchazon).
sintoma_enfermedad(diabetes, niveles_azucar_altos).
trata_enfermedad(maiz, problemas_renales).
trata_enfermedad(maiz, hipertension).
trata_enfermedad(maiz, problemas_digestivos).
trata_enfermedad(maiz, inflamacion).
trata_enfermedad(maiz, diabetes).
accion_efecto_planta(maiz, diuretico).
accion_efecto_planta(maiz, antiinflamatorio).
accion_efecto_planta(maiz, regulador_glucemia).
modo_tratamiento(maiz, tomar_te_maiz_tres_veces_dia).
modo_tratamiento(maiz, aplicar_cataplasma_maiz).
modo_tratamiento(maiz, consumir_maiz_hervido).
precaucion_planta(maiz, moderar_consumo_en_diabeticos).
precaucion_planta(maiz, evitar_exceso_si_toma_diureticos).
medicamento(maiz, aceite_de_maiz).
elementos(maiz, [carbohidratos, fibra, agua]).
imagen_planta(maiz,'imgs/Maiz.jpeg').

% Pagina 111. Malva
planta(malva).
nombre_cientifico(malva, 'Malva sylvestris').
continente_origen(malva, Europa).
pais_origen(malva, 'Region mediterranea').
modo_preparacion(malva, infusion).
modo_preparacion(malva, cataplasma).
modo_preparacion(malva, gargaras).
enfermedad(irritacion_garganta).
enfermedad(estrenimiento).
enfermedad(problemas_piel).
enfermedad(ulceras).
enfermedad(inflamacion_bucal).
sintoma_enfermedad(irritacion_garganta, dolor_al_tragar).
sintoma_enfermedad(estrenimiento, dificultad_defecar).
sintoma_enfermedad(problemas_piel, erupciones_cutaneas).
sintoma_enfermedad(ulceras, llagas_estomacales).
sintoma_enfermedad(inflamacion_bucal, encias_hinchadas).
trata_enfermedad(malva, irritacion_garganta).
trata_enfermedad(malva, estrenimiento).
trata_enfermedad(malva, problemas_piel).
trata_enfermedad(malva, ulceras).
trata_enfermedad(malva, inflamacion_bucal).
accion_efecto_planta(malva, emoliente).
accion_efecto_planta(malva, antiinflamatorio).
accion_efecto_planta(malva, laxante_suave).
accion_efecto_planta(malva, cicatrizante).
modo_tratamiento(malva, tomar_infusion_tres_veces_dia).
modo_tratamiento(malva, aplicar_cataplasma_zonas_afectadas).
modo_tratamiento(malva, hacer_gargaras_dos_veces_dia).
precaucion_planta(malva, no_consumir_en_embarazo).
precaucion_planta(malva, moderar_uso_en_ninos).
precaucion_planta(malva, evitar_si_alergia_malvaceas).
medicamento(malva, malvina).
elementos(malva, [mucilagos, flavonoides, agua]).
imagen_planta(malva,'imgs/malva.jpeg').


% Pagina 112. Malvavisco
planta(malvavisco).
nombre_cientifico(malvavisco, 'Althaea officinalis').
continente_origen(malvavisco, uropa).
pais_origen(malvavisco, 'Europa Oriental').
modo_preparacion(malvavisco, infusion_raiz).
modo_preparacion(malvavisco, jarabe).
modo_preparacion(malvavisco, cataplasma_hojas).
enfermedad(bronquitis).
enfermedad(gastritis).
enfermedad(eczema).
enfermedad(faringitis).
enfermedad(ciatica).
sintoma_enfermedad(bronquitis, tos_con_flema).
sintoma_enfermedad(gastritis, acidez_estomacal).
sintoma_enfermedad(eczema, picor_piel).
sintoma_enfermedad(faringitis, dolor_garganta).
sintoma_enfermedad(ciatica, dolor_pierna).
trata_enfermedad(malvavisco, bronquitis).
trata_enfermedad(malvavisco, gastritis).
trata_enfermedad(malvavisco, eczema).
trata_enfermedad(malvavisco, faringitis).
trata_enfermedad(malvavisco, ciatica).
accion_efecto_planta(malvavisco, demulcente).
accion_efecto_planta(malvavisco, antitusivo).
accion_efecto_planta(malvavisco, antiacido).
accion_efecto_planta(malvavisco, emoliente_intenso).
modo_tratamiento(malvavisco, tomar_jarabe_4_veces_dia).
modo_tratamiento(malvavisco, infusion_raiz_fria).
modo_tratamiento(malvavisco, compresas_raiz_molida).
medicamento(malvavisco, althaeina).
elementos(malvavisco, [mucilagos, althaeina, agua]).
imagen_planta(malvavisco,'imgs/mlavavisco.jpg').



% Pagina 113. Mangle
planta(mangle).
nombre_cientifico(mangle, 'Rhizophora mangle').
familia(mangle, 'Rhizophoraceae').
continente_origen(mangle, America).
region_origen(mangle, 'zonas_intermareales_tropicales').
parte_utilizada(mangle, corteza).
parte_utilizada(mangle, hojas).
parte_utilizada(mangle, propagulos).
modo_preparacion(mangle, decoccion_corteza).
modo_preparacion(mangle, polvo_corteza).
modo_preparacion(mangle, cataplasma_hojas).
enfermedad(leishmaniasis).
enfermedad(diarrea_cronica).
enfermedad(hemorragias).
enfermedad(infecciones_cutaneas).
enfermedad(hepatitis).
sintoma_enfermedad(leishmaniasis, ulceras_piel).
sintoma_enfermedad(diarrea_cronica, deshidratacion).
sintoma_enfermedad(hemorragias, sangrado_excesivo).
sintoma_enfermedad(infecciones_cutaneas, pus_piel).
sintoma_enfermedad(hepatitis, ictericia).
trata_enfermedad(mangle, leishmaniasis).
trata_enfermedad(mangle, diarrea_cronica).
trata_enfermedad(mangle, hemorragias).
trata_enfermedad(mangle, infecciones_cutaneas).
trata_enfermedad(mangle, hepatitis).
accion_efecto_planta(mangle, astringente_intenso).
accion_efecto_planta(mangle, antiviral).
accion_efecto_planta(mangle, hemostatico).
accion_efecto_planta(mangle, cicatrizante).
accion_efecto_planta(mangle, hepatoprotector).
modo_tratamiento(mangle, decoccion_50g_corteza_1litro).
modo_tratamiento(mangle, aplicar_polvo_heridas).
modo_tratamiento(mangle, masticar_propagulos_diarrea).
precaucion_planta(mangle, no_uso_prolongado).
precaucion_planta(mangle, evitar_en_embarazo).
precaucion_planta(mangle, maximo_7dias_continuos).
precaucion_planta(mangle, contraindicado_anemia).
medicamento(mangle, mangiferina).
elementos(mangle, [taninos, flavonoides, agua]).
imagen_planta(mangle,'imgs/mangle.jpg').



% Pagina 114. Manzanilla
planta(manzanilla).
nombre_cientifico(manzanilla, 'Matricaria chamomilla').
familia(manzanilla, 'Asteraceae').
continente_origen(manzanilla, Europa).
pais_origen(manzanilla, 'Region Mediterranea').
parte_utilizada(manzanilla, flores).
modo_preparacion(manzanilla, infusion_flores).
modo_preparacion(manzanilla, aceite_esencial).
modo_preparacion(manzanilla, compresas).
modo_preparacion(manzanilla, tintura).
enfermedad(ansiedad).
enfermedad(insomnio).
enfermedad(indigestion).
enfermedad(conjuntivitis).
enfermedad(eczema).
enfermedad(colico_menstrual).
sintoma_enfermedad(ansiedad, nerviosismo).
sintoma_enfermedad(insomnio, dificultad_dormir).
sintoma_enfermedad(indigestion, pesadez_estomacal).
sintoma_enfermedad(conjuntivitis, ojos_rojos).
sintoma_enfermedad(eczema, picazon_piel).
sintoma_enfermedad(colico_menstrual, dolor_uterino).
trata_enfermedad(manzanilla, ansiedad).
trata_enfermedad(manzanilla, insomnio).
trata_enfermedad(manzanilla, indigestion).
trata_enfermedad(manzanilla, conjuntivitis).
trata_enfermedad(manzanilla, eczema).
trata_enfermedad(manzanilla, colico_menstrual).
accion_efecto_planta(manzanilla, sedante_suave).
accion_efecto_planta(manzanilla, antiespasmodico).
accion_efecto_planta(manzanilla, antiinflamatorio).
accion_efecto_planta(manzanilla, carminativo).
accion_efecto_planta(manzanilla, emenagogo).
modo_tratamiento(manzanilla, infusion_3g_flores_150ml).
modo_tratamiento(manzanilla, compresas_ojos_inflamados).
modo_tratamiento(manzanilla, aceite_diluido_masajes).
modo_tratamiento(manzanilla, tintura_30gotas_agua).
precaucion_planta(manzanilla, evitar_alergicos_asteraceas).
precaucion_planta(manzanilla, no_uso_ocular_sin_filtrar).
precaucion_planta(manzanilla, moderar_en_embarazo).
precaucion_planta(manzanilla, no_hervir_flores).
medicamento(manzanilla, camazuleno).
elementos(manzanilla, [camazuleno, apigenina, agua]).
imagen_planta(manzanilla,'imgs/manzanilla.jpeg').


% Pagina 115.  marrubio
planta(marrubio).
nombre_cientifico(marrubio, 'Marrubium vulgare').
continente_origen(marrubio, Europa).
pais_origen(marrubio, desconocido).
modo_preparacion(marrubio, infusion).
enfermedad(asma).
enfermedad(caida_cabello).
enfermedad(obesidad).
enfermedad(tos).
enfermedad(reumatismo).
enfermedad(vomitos).
sintoma_enfermedad(asma, dificultad_respiratoria).
sintoma_enfermedad(caida_cabello, perdida_cabello).
sintoma_enfermedad(obesidad, aumento_peso).
sintoma_enfermedad(tos, irritacion_garganta).
sintoma_enfermedad(reumatismo, dolor_articular).
sintoma_enfermedad(vomitos, nausea).
trata_enfermedad(marrubio, asma).
trata_enfermedad(marrubio, caida_cabello).
trata_enfermedad(marrubio, obesidad).
trata_enfermedad(marrubio, tos).
trata_enfermedad(marrubio, reumatismo).
trata_enfermedad(marrubio, vomitos).
accion_efecto_planta(marrubio, expectorante).
accion_efecto_planta(marrubio, digestiva).
modo_tratamiento(marrubio, tomar_te_dos_veces_dia).
precaucion_planta(marrubio, evitar_exceso_molestias_estomacales).
medicamento(marrubio, marrubiina).
elementos(marrubio, [marrubiina, aceites_esenciales, agua]).
imagen_planta(marrubio,'imgs/imgmarrubio.jpg').


% Pagina 116.  marihuana
planta(marihuana).
nombre_cientifico(marihuana, 'Cannabis sativa').
continente_origen(marihuana, Asia).
pais_origen(marihuana, India).
modo_preparacion(marihuana, maceracion).
enfermedad(cancer).
enfermedad(glaucoma).
enfermedad(males_ojos).
enfermedad(artritis).
enfermedad(reumatismo).
sintoma_enfermedad(cancer, dolor_cronico).
sintoma_enfermedad(glaucoma, presion_intraocular).
sintoma_enfermedad(males_ojos, irritacion_ocular).
sintoma_enfermedad(artritis, dolor_articular).
sintoma_enfermedad(reumatismo, dolor_articular).
trata_enfermedad(marihuana, cancer).
trata_enfermedad(marihuana, glaucoma).
trata_enfermedad(marihuana, males_ojos).
trata_enfermedad(marihuana, artritis).
trata_enfermedad(marihuana, reumatismo).
accion_efecto_planta(marihuana, analgesica).
accion_efecto_planta(marihuana, antiinflamatoria).
modo_tratamiento(marihuana, frotaciones_externas_agua_uso).
precaucion_planta(marihuana, supervision_medica_menores_edad).
medicamento(marihuana, tetrahidrocannabinol).
elementos(marihuana, [thc, cbd, terpenos, agua]).
imagen_planta(marihuana,'imgs/imgmarihuana.jpg').

% Pagina 117.  mastuerzo
planta(mastuerzo).
nombre_cientifico(mastuerzo, 'Lepidium sativum').
continente_origen(mastuerzo, Asia).
pais_origen(mastuerzo, desconocido).
modo_preparacion(mastuerzo, cocimiento).
enfermedad(ciatica).
enfermedad(tuberculosis).
sintoma_enfermedad(ciatica, dolor_nervio).
sintoma_enfermedad(tuberculosis, tos_cronica).
trata_enfermedad(mastuerzo, ciatica).
trata_enfermedad(mastuerzo, tuberculosis).
accion_efecto_planta(mastuerzo, antiinflamatoria).
accion_efecto_planta(mastuerzo, expectorante).
modo_tratamiento(mastuerzo, tomar_te_o_compresas).
precaucion_planta(mastuerzo, tuberculosis_avanzada).
medicamento(mastuerzo, lepidium_extracto).
elementos(mastuerzo, [glucosinolatos, aceites_esenciales, agua]).
imagen_planta(mastuerzo,'imgs/imgmastuerzo.jpg').

% Pagina 118.  matarique
planta(matarique).
nombre_cientifico(matarique, 'Psacalium decompositum').
continente_origen(matarique, America).
pais_origen(matarique, Mexico).
modo_preparacion(matarique, cocimiento).
enfermedad(diabetes).
enfermedad(reumatismo).
enfermedad(rinones_adoloridos).
sintoma_enfermedad(diabetes, hiperglucemia).
sintoma_enfermedad(reumatismo, dolor_articular).
sintoma_enfermedad(rinones_adoloridos, dolor_renal).
trata_enfermedad(matarique, diabetes).
trata_enfermedad(matarique, reumatismo).
trata_enfermedad(matarique, rinones_adoloridos).
accion_efecto_planta(matarique, desinflamatoria).
accion_efecto_planta(matarique, hipoglucemiante).
modo_tratamiento(matarique, tomar_te_o_tintura).
precaucion_planta(matarique, diabetes_problemas_renales).
medicamento(matarique, psacalina).
elementos(matarique, [psacalina, flavonoides, agua]).
imagen_planta(matarique,'imgs/imgmatarique.jpg').

% Pagina 119.  menta
planta(menta).
nombre_cientifico(menta, 'Mentha piperita').
continente_origen(menta, Europa).
pais_origen(menta, desconocido).
modo_preparacion(menta, infusion).
enfermedad(insomnio).
enfermedad(lactancia).
enfermedad(nauseas).
enfermedad(neuralgias).
enfermedad(vomitos).
enfermedad(sarna).
sintoma_enfermedad(insomnio, dificultad_dormir).
sintoma_enfermedad(lactancia, baja_produccion_leche).
sintoma_enfermedad(nauseas, malestar_estomacal).
sintoma_enfermedad(neuralgias, dolor_nervioso).
sintoma_enfermedad(vomitos, nausea).
sintoma_enfermedad(sarna, picazon_piel).
trata_enfermedad(menta, insomnio).
trata_enfermedad(menta, lactancia).
trata_enfermedad(menta, nauseas).
trata_enfermedad(menta, neuralgias).
trata_enfermedad(menta, vomitos).
trata_enfermedad(menta, sarna).
accion_efecto_planta(menta, digestiva).
accion_efecto_planta(menta, calmante).
accion_efecto_planta(menta, refrescante).
modo_tratamiento(menta, tomar_te_dos_tres_veces_dia).
precaucion_planta(menta, reflujo_gastroesofagico).
precaucion_planta(menta, no_exceso_uso).
medicamento(menta, mentol).
elementos(menta, [mentol, flavonoides, agua]).
imagen_planta(menta,'imgs/imgmenta.jpg').

%Pagina 125 Oregano
planta(oregano).
nombre_cientifico(oregano, 'Origanum vulgare').
continente_origen(oregano, 'Europa').
pais_origen(oregano, 'Region Mediterranea').
modo_preparacion(oregano, 'Infusion').
trata_enfermedad(oregano, 'Problemas digestivos').
trata_enfermedad(oregano, 'Resfriado').
accion_efecto_planta(oregano, 'Antiespasmodico').
accion_efecto_planta(oregano, 'Expectorante').
modo_tratamiento(oregano, 'Dos veces al dia').
precaucion_planta(oregano, 'Evitar dosis altas').
modo_tratamiento(oregano, dos_veces_dia).
precaucion_planta(oregano, evitar_dosis_altas).
imagen_planta(oregano,'imgs/oregano.jpeg').

%Pagina 126 palo_de_flor
planta(palo_de_flor).
nombre_cientifico(palo_de_flor, 'Bourreria huanita').
continente_origen(palo_de_flor, 'America').
pais_origen(palo_de_flor, 'Mexico').
modo_preparacion(palo_de_flor, 'Cocimiento').
trata_enfermedad(palo_de_flor, 'Fiebre').
trata_enfermedad(palo_de_flor, 'Dolor de cabeza').
accion_efecto_planta(palo_de_flor, 'Febrifugo').
accion_efecto_planta(palo_de_flor, 'Analgesico').
modo_tratamiento(palo_de_flor, 'Dos veces al dia').
precaucion_planta(palo_de_flor, 'No prolongar tratamiento').
modo_tratamiento(palo_de_flor, dos_veces_dia).
precaucion_planta(palo_de_flor, no_prolongar_tratamiento).
imagen_planta(palo_de_flor,'imgs/palo_de_flor.jpeg').

%Pagina 127 pasiflora
planta(pasiflora).
nombre_cientifico(pasiflora, 'Passiflora incarnata').
continente_origen(pasiflora, 'America').
pais_origen(pasiflora, 'Mexico').
modo_preparacion(pasiflora, 'Infusion').
trata_enfermedad(pasiflora, 'Insomnio').
trata_enfermedad(pasiflora, 'Ansiedad').
accion_efecto_planta(pasiflora, 'Sedante').
accion_efecto_planta(pasiflora, 'Ansiolitico').
modo_tratamiento(pasiflora, 'antes de dormir').
precaucion_planta(pasiflora, 'no combinar con alcohol').
medicamento(pasiflora, 'Passiflorina').
elementos(pasiflora, [flavonoides, alcaloides, agua]).
imagen_planta(pasiflora,'imgs/pasiflora.jpg').

%Pagina 128 pericon
planta(pericon).
nombre_cientifico(pericon, 'Tagetes lucida').
continente_origen(pericon, 'America').
pais_origen(pericon, 'Mexico').
modo_preparacion(pericon, 'Infusion').
trata_enfermedad(pericon, 'Colicos').
trata_enfermedad(pericon, 'Indigestion').
accion_efecto_planta(pericon, 'Digestivo').
accion_efecto_planta(pericon, 'Carminativo').
modo_tratamiento(pericon, 'despues de comidas').
precaucion_planta(pericon, 'evitar embarazo').
medicamento(pericon, 'Aceite esencial de pericon').
elementos(pericon, [aceites_esenciales, flavonoides, agua]).
imagen_planta(pericon,'imgs/pericon.jpg').

%Pagina 129 pinguica
planta(pinguica).
nombre_cientifico(pinguica, 'Arctostaphylos pungens').
continente_origen(pinguica, 'America').
pais_origen(pinguica, 'Mexico').
modo_preparacion(pinguica, 'Cocimiento').
trata_enfermedad(pinguica, 'Infeccion urinaria').
trata_enfermedad(pinguica, 'Rinones').
accion_efecto_planta(pinguica, 'Diuretico').
accion_efecto_planta(pinguica, 'Depurativo').
modo_tratamiento(pinguica, 'tres veces al dia').
precaucion_planta(pinguica, 'no usar por periodos largos').
medicamento(pinguica, 'Arbutina').
elementos(pinguica, [arbutina, flavonoides, agua]).
imagen_planta(pinguica,'imgs/pinguica.jpeg').

% Pagina 140 ruda
planta(ruda).
nombre_cientifico(ruda, 'Ruta graveolens').
continente_origen(ruda, 'Europa').
pais_origen(ruda, 'Espana').
modo_preparacion(ruda, 'Infusion').
enfermedad(menstruacion).
enfermedad(colicos).
enfermedad(nerviosismo).
sintoma_enfermedad(menstruacion, retraso_menstrual).
sintoma_enfermedad(colicos, dolor_abdominal).
sintoma_enfermedad(nerviosismo, ansiedad).
trata_enfermedad(ruda, menstruacion).
trata_enfermedad(ruda, colicos).
trata_enfermedad(ruda, nerviosismo).
accion_efecto_planta(ruda, calmante).
accion_efecto_planta(ruda, emenagoga).
accion_efecto_planta(ruda, antiespasmodica).
modo_tratamiento(ruda, con_moderacion).
precaucion_planta(ruda, evitar_embarazo).
precaucion_planta(ruda, no_exceso_uso).
medicamento(ruda, rutoquinona).
elementos(ruda, [rutina, flavonoides, agua]).
imagen_planta(ruda,'imgs/Ruda.jpg').


% Pagina 141 ruibarbo
planta(ruibarbo).
nombre_cientifico(ruibarbo, 'Rheum palmatum').
continente_origen(ruibarbo, 'Asia').
pais_origen(ruibarbo, 'China').
modo_preparacion(ruibarbo, 'Cocimiento').
enfermedad(estrenimiento).
enfermedad(digestion).
enfermedad(higado).
sintoma_enfermedad(estrenimiento, dificultad_evacuacion).
sintoma_enfermedad(digestion, pesadez_estomacal).
sintoma_enfermedad(higado, insuficiencia_hepatica).
trata_enfermedad(ruibarbo, estrenimiento).
trata_enfermedad(ruibarbo, digestion).
trata_enfermedad(ruibarbo, higado).
accion_efecto_planta(ruibarbo, laxante).
accion_efecto_planta(ruibarbo, digestiva).
accion_efecto_planta(ruibarbo, tonica).
modo_tratamiento(ruibarbo, pequenas_dosis).
precaucion_planta(ruibarbo, no_usar_en_embarazo).
precaucion_planta(ruibarbo, no_exceso_uso).
medicamento(ruibarbo, antraquinona).
elementos(ruibarbo, [antraquinona, flavonoides, agua]).
imagen_planta(ruibarbo,'imgs/Ruibarbo.jpg').

% Pagina 142 salvia
planta(salvia).
nombre_cientifico(salvia, 'Salvia officinalis').
continente_origen(salvia, 'Europa').
pais_origen(salvia, 'Italia').
modo_preparacion(salvia, 'Infusion').
enfermedad(dolor_garganta).
enfermedad(digestion).
enfermedad(sudoracion_excesiva).
sintoma_enfermedad(dolor_garganta, inflamacion_faringea).
sintoma_enfermedad(digestion, pesadez_estomacal).
sintoma_enfermedad(sudoracion_excesiva, sudor_constante).
trata_enfermedad(salvia, dolor_garganta).
trata_enfermedad(salvia, digestion).
trata_enfermedad(salvia, sudoracion_excesiva).
accion_efecto_planta(salvia, astringente).
accion_efecto_planta(salvia, digestiva).
accion_efecto_planta(salvia, antiseptica).
modo_tratamiento(salvia, hacer_gargaras_o_beber).
precaucion_planta(salvia, no_usar_en_grandes_cantidades).
precaucion_planta(salvia, no_exceso_uso).
medicamento(salvia, salvin).
elementos(salvia, [salvin, flavonoides, agua]).
imagen_planta(salvia,'imgs/Salvia.jpg').


% Pagina 143 sen
planta(sen).
nombre_cientifico(sen, 'Senna alexandrina').
continente_origen(sen, 'Africa').
pais_origen(sen, 'Egipto').
modo_preparacion(sen, 'Infusion').
enfermedad(estrenimiento).
sintoma_enfermedad(estrenimiento, dificultad_evacuacion).
trata_enfermedad(sen, estrenimiento).
accion_efecto_planta(sen, laxante).
modo_tratamiento(sen, una_taza_diaria_por_una_semana).
precaucion_planta(sen, no_uso_prolongado).
precaucion_planta(sen, no_exceso_uso).
medicamento(sen, senosidos).
elementos(sen, [senosidos, flavonoides, agua]).
imagen_planta(sen,'imgs/Sen.jpg').


% Pagina 144 sanguinaria
planta(sanguinaria).
nombre_cientifico(sanguinaria, 'Sanguinaria canadensis').
continente_origen(sanguinaria, 'America').
pais_origen(sanguinaria, 'Estados Unidos').
modo_preparacion(sanguinaria, 'Cocimiento').
enfermedad(problemas_respiratorios).
enfermedad(dolor_garganta).
enfermedad(tos).
sintoma_enfermedad(problemas_respiratorios, dificultad_respirar).
sintoma_enfermedad(dolor_garganta, inflamacion_faringea).
sintoma_enfermedad(tos, irritacion_bronquial).
trata_enfermedad(sanguinaria, problemas_respiratorios).
trata_enfermedad(sanguinaria, dolor_garganta).
trata_enfermedad(sanguinaria, tos).
accion_efecto_planta(sanguinaria, expectorante).
accion_efecto_planta(sanguinaria, estimulante).
accion_efecto_planta(sanguinaria, antiseptica).
modo_tratamiento(sanguinaria, beber_o_hacer_gargaras).
precaucion_planta(sanguinaria, toxicidad_alta_si_se_abusa).
precaucion_planta(sanguinaria, no_exceso_uso).
medicamento(sanguinaria, sanguinarina).
elementos(sanguinaria, [sanguinarina, flavonoides, agua]).
imagen_planta(sanguinaria,'imgs/Sanguinaria.jpg').


% Pagina 145, Sensitiva
planta(sensitiva).
nombre_cientifico(sensitiva, 'Mimosa pudica').
continente_origen(sensitiva, 'America').
pais_origen(sensitiva, 'Centroamerica').
modo_preparacion(sensitiva, 'Infusion de hojas').
enfermedad(ansiedad).
enfermedad(insomnio).
trata_enfermedad(sensitiva, ansiedad).
trata_enfermedad(sensitiva, insomnio).
accion_efecto_planta(sensitiva, sedante).
accion_efecto_planta(sensitiva, relajante).
modo_tratamiento(sensitiva, noche).
precaucion_planta(sensitiva, combinacion_sedantes).
precaucion_planta(sensitiva, no_exceso_uso).
medicamento(sensitiva, mimosa).
elementos(sensitiva, [flavonoides, alcaloides, agua]).
imagen_planta(sensitiva,'imgs/Sensitiva.jpeg').

% Pagina 146, Simonillo
planta(simonillo).
nombre_cientifico(simonillo, 'Tagetes lucida').
continente_origen(simonillo, 'America').
pais_origen(simonillo, 'Mexico').
modo_preparacion(simonillo, 'Te de flores').
enfermedad(problemas_estomacales).
enfermedad(parasitos_intestinales).
trata_enfermedad(simonillo, problemas_estomacales).
trata_enfermedad(simonillo, parasitos_intestinales).
accion_efecto_planta(simonillo, digestivo).
accion_efecto_planta(simonillo, antiparasitario).
modo_tratamiento(simonillo, en_ayunas).
precaucion_planta(simonillo, dosis_altas).
precaucion_planta(simonillo, no_exceso_uso).
medicamento(simonillo, tagetesina).
elementos(simonillo, [tagetesina, flavonoides, agua]).
imagen_planta(simonillo,'imgs/Simonillo.jpg').

% Pagina 147, Tamarindo
planta(tamarindo).
nombre_cientifico(tamarindo, 'Tamarindus indica').
continente_origen(tamarindo, 'Africa').
pais_origen(tamarindo, 'Sudan').
modo_preparacion(tamarindo, 'Infusion de vainas').
modo_preparacion(tamarindo, 'Pulpa').
enfermedad(estrenimiento).
enfermedad(fiebre).
trata_enfermedad(tamarindo, estrenimiento).
trata_enfermedad(tamarindo, fiebre).
accion_efecto_planta(tamarindo, laxante).
accion_efecto_planta(tamarindo, antipiretico).
modo_tratamiento(tamarindo, cuando_se_requiera).
precaucion_planta(tamarindo, diarrea).
precaucion_planta(tamarindo, no_exceso_uso).
medicamento(tamarindo, tamarindina).
elementos(tamarindo, [tamarindina, flavonoides, agua]).
imagen_planta(tamarindo,'imgs/Tamarindo.jpeg').

% Pagina 148, Tabach�n
planta(tabachin).
nombre_cientifico(tabachin, 'Cesalpinia pulcherrima').
continente_origen(tabachin, 'America').
pais_origen(tabachin, 'Mexico').
modo_preparacion(tabachin, 'Infusion de flores').
enfermedad(tos).
enfermedad(bronquitis).
trata_enfermedad(tabachin, tos).
trata_enfermedad(tabachin, bronquitis).
accion_efecto_planta(tabachin, expectorante).
accion_efecto_planta(tabachin, antitusivo).
modo_tratamiento(tabachin, tres_veces_dia).
precaucion_planta(tabachin, embarazo).
precaucion_planta(tabachin, no_exceso_uso).
medicamento(tabachin, tabachina).
elementos(tabachin, [tabachina, flavonoides, agua]).
imagen_planta(tabachin,'imgs/Tabachin.jpg').

% Pagina 149, Taray
planta(taray).
nombre_cientifico(taray, 'Tamarix aphylla').
continente_origen(taray, 'Asia').
pais_origen(taray, 'Regiones aridas').
modo_preparacion(taray, 'Cocimiento de corteza').
enfermedad(problemas_renales).
enfermedad(inflamacion_ojos).
trata_enfermedad(taray, problemas_renales).
accion_efecto_planta(taray, diuretico).
accion_efecto_planta(taray, antiinflamatorio).
modo_tratamiento(taray, como_agua_de_uso).
precaucion_planta(taray, dosis_excesivas).
precaucion_planta(taray, no_exceso_uso).
medicamento(taray, taraxacina).
elementos(taray, [taraxacina, flavonoides, agua]).
imagen_planta(taray,'imgs/Taray.jpg').



% Pagina 135 regaliz
planta(regaliz).
nombre_cientifico(regaliz, 'Glycyrrhiza glabra').
continente_origen(regaliz, 'Europa').
modo_preparacion(regaliz, 'Infusion').
enfermedad(tos).
enfermedad(dolor_garganta).
enfermedad(problemas_digestivos).
sintoma_enfermedad(tos, irritacion_garganta).
trata_enfermedad(regaliz, tos).
trata_enfermedad(regaliz, dolor_garganta).
trata_enfermedad(regaliz, problemas_digestivos).
accion_efecto_planta(regaliz, expectorante).
accion_efecto_planta(regaliz, digestivo).
modo_tratamiento(regaliz, pequenas_cantidades).
precaucion_planta(regaliz, hipertension).
medicamento(regaliz, glicirricina).
elementos(regaliz, [glicirricina, flavonoides, agua]).
imagen_planta(regaliz,'imgs/regaliz.jpg').

% Pagina 136 retama
planta(retama).
nombre_cientifico(retama, 'Spartium junceum').
continente_origen(retama, 'Europa').
modo_preparacion(retama, 'Cocimiento').
enfermedad(hipertension).
enfermedad(reumatismo).
sintoma_enfermedad(hipertension, presion_alta).
trata_enfermedad(retama, hipertension).
trata_enfermedad(retama, reumatismo).
accion_efecto_planta(retama, diuretico).
accion_efecto_planta(retama, hipotensor).
modo_tratamiento(retama, con_precaucion).
precaucion_planta(retama, toxicidad).
precaucion_planta(retama, no_exceso_uso).
medicamento(retama, esparteina).
elementos(retama, [esparteina, flavonoides, agua]).
imagen_planta(retama,'imgs/retama.jpg').

% Pagina 137 ricino
planta(ricino).
nombre_cientifico(ricino, ricinus_communis).
continente_origen(ricino, africa).
modo_preparacion(ricino, maceracion).
enfermedad(estrenimiento).
enfermedad(inflamacion).
sintoma_enfermedad(estrenimiento, dificultad_evacuacion).
trata_enfermedad(ricino, estrenimiento).
trata_enfermedad(ricino, inflamacion).
accion_efecto_planta(ricino, laxante).
accion_efecto_planta(ricino, antiinflamatorio).
modo_tratamiento(ricino, uso_externo_o_ocasional).
precaucion_planta(ricino, toxicidad_semillas).
precaucion_planta(ricino, no_exceso_uso).
medicamento(ricino, ricina).
elementos(ricino, [ricina, flavonoides, agua]).
imagen_planta(ricino,'imgs/ricino.jpg').

% Pagina 138 rosal
planta(rosal).
nombre_cientifico(rosal, rosa_centifolia).
continente_origen(rosal, asia).
modo_preparacion(rosal, infusion).
enfermedad(estres).
enfermedad(problemas_digestivos).
sintoma_enfermedad(estres, tension_nerviosa).
trata_enfermedad(rosal, estres).
trata_enfermedad(rosal, problemas_digestivos).
accion_efecto_planta(rosal, relajante).
accion_efecto_planta(rosal, digestivo).
modo_tratamiento(rosal, dos_tazas_al_dia).
precaucion_planta(rosal, alergia_cutanea).
medicamento(rosal, rosa).
elementos(rosal, [rosa, flavonoides, agua]).
imagen_planta(rosal,'imgs/rosal.jpg').

% Pagina 139 romero
planta(romero).
nombre_cientifico(romero, 'Rosmarinus officinalis').
continente_origen(romero, 'Europa').
modo_preparacion(romero, 'Infusion').
enfermedad(fatiga).
enfermedad(problemas_digestivos).
sintoma_enfermedad(fatiga, cansancio_general).
trata_enfermedad(romero, fatiga).
trata_enfermedad(romero, problemas_digestivos).
accion_efecto_planta(romero, estimulante).
accion_efecto_planta(romero, digestivo).
modo_tratamiento(romero, una_taza_manana).
precaucion_planta(romero, embarazo).
precaucion_planta(romero, no_exceso_uso).
medicamento(romero, rosmarinato).
elementos(romero, [rosmarinato, flavonoides, agua]).
imagen_planta(romero,'imgs/romero.jpg').

% Pagina 120 Nopal
planta(nopal).
nombre_cientifico(nopal, 'Opuntia tuna').
continente_origen(nopal, 'Asia').
pais_origen(nopal, 'Japon').
modo_preparacion(nopal, 'Pencas').
enfermedad(nopal, diabetes).
trata_enfermedad(nopal, diabetes).
enfermedad(nopal, inflamacion_vejiga).
sintoma_enfermedad(inflamacion_vejiga, hinchazon).
trata_enfermedad(nopal, inflamacion_vejiga).
enfermedad(nopal, heridas).
trata_enfermedad(nopal, heridas).
enfermedad(nopal, hinchazones).
trata_enfermedad(nopal, hinchazones).
accio_efecta_planta(nopal, laxante).
accio_efecta_planta(nopal, vermifugo).
modo_tratamiento(nopal, cataplasma).
modo_tratamiento(nopal, consumo_directo).
modo_tratamiento(nopal, infusion).
precaucion_planta(nopal, diabetes).
precaucion_planta(nopal, no_exceso_uso).
medicamento(nopal, nopalina).
elementos(nopal, [nopalina, flavonoides, agua]).
imagen_planta(nopal,'imgs/nopal.jpg').

% Pagina 121 Nogal
planta(nogal).
nombre_cientifico(nogal, 'Juglans regia').
continente_origen(nogal, 'Europa').
pais_origen(nogal, 'Iran').
modo_preparacion(nogal, 'Hojas y corteza en te o infusion').
enfermedad(nogal, 'Anemia').
enfermedad(nogal, 'Herpes').
sintoma_enfermedad('Anemia', 'Fatiga').
sintoma_enfermedad('Herpes', 'Ampollas cutaneas').
trata_enfermedad(nogal, anemia).
trata_enfermedad(nogal, escrofulosis).
trata_enfermedad(nogal, herpes).
trata_enfermedad(nogal, reumatismo).
accion_efecto_planta(nogal, tonico).
accion_efecto_planta(nogal, antireumatico).
accion_efecto_planta(nogal, nutritivo).
modo_tratamiento(nogal, te).
modo_tratamiento(nogal, infusion).
modo_tratamiento(nogal, consumo_directo).
precaucion_planta(nogal, embarazo).
precaucion_planta(nogal, no_exceso_uso).
medicamento(nogal, juglona).
elementos(nogal, [juglona, flavonoides, agua]).
imagen_planta(nogal,'imgs/nogal.jpg').

% Pagina 122 Nuez vomica
planta(nuez_vomica).
nombre_cientifico(nuez_vomica, 'Strychnos nux vomica').
continente_origen(nuez_vomica, 'Oceania').
utilizacion_historica(nuez_vomica, 'Emetica').
utilizacion_historica(nuez_vomica, 'Febrifuga').
alcaloide(nuez_vomica, estricnina).
alcaloide(nuez_vomica, brucina).
enfermedad(nuez_vomica, fiebres_malignas).
trata_enfermedad(nuez_vomica, fiebres_malignas).
enfermedad(nuez_vomica, bronquitis).
trata_enfermedad(nuez_vomica, bronquitis).
enfermedad(nuez_vomica, reumas).
trata_enfermedad(nuez_vomica, reumas).
enfermedad(nuez_vomica, lombrices_intestinales).
trata_enfermedad(nuez_vomica, lombrices_intestinales).
enfermedad(nuez_vomica, tos_ferina).
trata_enfermedad(nuez_vomica, tos_ferina).  
modo_preparacion(nuez_vomica, te_espanol).
modo_tratamiento(nuez_vomica, te_espanol).
modo_tratamiento(nuez_vomica, hojas_te).
modo_tratamiento(nuez_vomica, infusion).
modo_tratamiento(nuez_vomica, cocimiento).
precaucion_planta(nuez_vomica, no_exceso_uso).
medicamento(nuez_vomica, estricnina).
elementos(nuez_vomica, [estricnina, brucina, agua]).
imagen_planta(nuez_vomica,'imgs/nuez_vomica.jpg').

% Pagina 123 Ocote
planta(ocote).
nombre_cientifico(ocote, pinus_teocote).
continente_origen(ocote, america).
pais_origen(ocote, mexico).
enfermedad(ocote, problemas_respiratorios).
trata_enfermedad(ocote, problemas_respiratorios).
enfermedad(ocote, dolor_muscular).
trata_enfermedad(ocote, dolor_muscular).
modo_preparacion(ocote, resina_mezclada).
modo_tratamiento(ocote, cataplasma).
modo_tratamiento(ocote, infusion).
accion_efecto_planta(ocote, expectorante).
accion_efecto_planta(ocote, antiinflamatorio).
accion_efecto_planta(ocote, antireumatico).
modo_tratamiento(ocote, infusion).
modo_tratamiento(ocote, cocimiento).
modo_tratamiento(ocote, cataplasma).
precaucion_planta(ocote, no_exceso_uso).
medicamento(ocote, pineno).
elementos(ocote, [pineno, flavonoides, agua]).
imagen_planta(ocote,'imgs/Ocote.jpg').

% Pagina 124 Ortiga
planta(ortiga).
nombre_cientifico(ortiga, urtica_urens).
continente_origen(ortiga, Europa).
pais_origen(ortiga, 'Regiones_templadas').
modo_preparacion(ortiga, hojas_frescas_o_secas).
modo_preparacion(ortiga, infusion).
modo_preparacion(ortiga, cataplasma).
enfermedad(ortiga, anemia).
trata_enfermedad(ortiga, anemia).
enfermedad(ortiga, artritis).
trata_enfermedad(ortiga, artritis).
enfermedad(ortiga, reumatismo).
trata_enfermedad(ortiga, reumatismo).
enfermedad(ortiga, problemas_cutaneos).
trata_enfermedad(ortiga, problemas_cutaneos).
enfermedad(ortiga, caida_cabello).
trata_enfermedad(ortiga, caida_cabello).
sintoma_enfermedad(anemia, debilidad).
sintoma_enfermedad(artritis, dolor_articulaciones).
sintoma_enfermedad(problemas_cutaneos, irritacion_piel).
accio_efecta_planta(ortiga, diuretico).
accio_efecta_planta(ortiga, depurativo).
accio_efecta_planta(ortiga, antiinflamatorio).
modo_tratamiento(ortiga, te).
modo_tratamiento(ortiga, infusion).
modo_tratamiento(ortiga, cataplasma).
modo_tratamiento(ortiga, consumo_directo).
precaucion_planta(ortiga, no_exceso_uso).
medicamento(ortiga, urtina).
elementos(ortiga, [urtina, flavonoides, agua]).
imagen_planta(ortiga,'imgs/ortiga.jpg').

% P�gina 130. Prodigiosa
planta(prodigiosa).
nombre_cientifico(prodigiosa, 'Coleosanthus squarrosus').
continente_origen(prodigiosa, 'America').
pais_origen(prodigiosa, 'Mexico').
modo_preparacion(prodigiosa, 'Cocimiento').
enfermedad(disenteria).
enfermedad('cirrosis hepatica').
enfermedad(ictericia).
sintoma_enfermedad(disenteria, 'dolor abdominal').
sintoma_enfermedad('cirrosis hepatica', 'picazon en la piel').
sintoma_enfermedad(ictericia, 'piel amarillenta').
trata_enfermedad(prodigiosa, disenteria).
trata_enfermedad(prodigiosa, 'cirrosis hepatica').
trata_enfermedad(prodigiosa, ictericia).
accion_efecto_planta(prodigiosa, hepatoprotector).
accion_efecto_planta(prodigiosa, desintoxicante).
modo_tratamiento(prodigiosa, 'una taza en ayunas y otra antes de cada comida').
precaucion_planta(prodigiosa, embarazo).
precaucion_planta(prodigiosa, lactancia).
medicamento(prodigiosa, prodigiosina).
elementos(prodigiosa, [prodigiosina, flavonoides, agua]).
imagen_planta(prodigiosa,'imgs/prodigiosa.jpg').

% Pagina 131. Pirul
planta(pirul).
nombre_cientifico(pirul, 'Schinus molle').
continente_origen(pirul, 'America').
pais_origen(pirul, 'Peru').
modo_preparacion(pirul, 'Maceracion').
enfermedad(gonorrea).
sintoma_enfermedad(gonorrea, 'ardor al orinar').
trata_enfermedad(pirul, gonorrea).
accion_efecto_planta(pirul, repelente).
accion_efecto_planta(pirul, purgante).
modo_tratamiento(pirul, '20 gotas cada 8 horas').
precaucion_planta(pirul, 'alergia polen').
precaucion_planta(pirul, 'no usar en embarazo').
medicamento(pirul, pirulina).
elementos(pirul, [pirulina, flavonoides, agua]).
imagen_planta(pirul,'imgs/pirul.jpg').

% Pagina 132. Pulsatilla
planta(pulsatilla).
nombre_cientifico(pulsatilla, 'Anemone pulsatilla').
continente_origen(pulsatilla, 'Europa').
pais_origen(pulsatilla, 'Dinamarca').
modo_preparacion(pulsatilla, 'infusion').
enfermedad(herpes).
enfermedad('tos ferina').
enfermedad('enfermedades venereas').
enfermedad('jaquecas neuronales').
sintoma_enfermedad(herpes, llagas).
sintoma_enfermedad('tos ferina', 'secrecion nasal').
sintoma_enfermedad('enfermedades venereas', 'llagas').
sintoma_enfermedad('jaquecas neuronales', 'nauseas').
trata_enfermedad(pulsatilla, herpes).
trata_enfermedad(pulsatilla, 'tos ferina').
trata_enfermedad(pulsatilla, 'enfermedades venereas').
trata_enfermedad(pulsatilla, 'jaquecas neuronales').
accion_efecto_planta(pulsatilla, calmante).
accion_efecto_planta(pulsatilla, antiespasmodico).
modo_tratamiento(pulsatilla, 'tres a cinco veces al dia').
precaucion_planta(pulsatilla, 'irritante severo en piel').
precaucion_planta(pulsatilla, 'no usar en embarazo').
medicamento(pulsatilla, anemonina).
elementos(pulsatilla, [anemonina, flavonoides, agua]).
imagen_planta(pulsatilla,'imgs/pulsatilla.jpg').

% Pagina 133. Quebracho
planta(quebracho).
nombre_cientifico(quebracho, 'Lysiloma auritum').
continente_origen(quebracho, 'America').
pais_origen(quebracho, 'Chile').
modo_preparacion(quebracho, 'infusion').
enfermedad('inflamaciones intestinales').
enfermedad('flujo').
enfermedad('afecciones del rinon').
sintoma_enfermedad('inflamaciones intestinales', 'cansancio').
sintoma_enfermedad('flujo', 'entumecimiento').
sintoma_enfermedad('afecciones del rinon', 'dolor en espalda').
trata_enfermedad(quebracho, 'inflamaciones intestinales').
trata_enfermedad(quebracho, 'flujo').
trata_enfermedad(quebracho, 'afecciones del rinon').
accion_efecto_planta(quebracho, antiasmatico).
accion_efecto_planta(quebracho, descongestivo).
modo_tratamiento(quebracho, 'una a tres tazas al dia').
precaucion_planta(quebracho, lactancia).
precaucion_planta(quebracho, 'no usar en embarazo').
medicamento(quebracho, quebrachamina).
elementos(quebracho, [quebrachamina, flavonoides, agua]).
imagen_planta(quebracho,'imgs/quebracho.jpg').

% Pagina 134. Quina
planta(quina).
nombre_cientifico(quina, 'Cinchona calisaya').
continente_origen(quina, 'America').
pais_origen(quina, 'Bolivia').
modo_preparacion(quina, 'infusion').
enfermedad('tos ferina').
enfermedad('asma').
enfermedad(tetano).
enfermedad(epilepsia).
enfermedad(eclampsia).
sintoma_enfermedad('tos ferina', 'secrecion nasal').
sintoma_enfermedad('asma', 'sibilancias ').
sintoma_enfermedad(tetano, 'espasmos').
sintoma_enfermedad(epilepsia, 'crisis epileptica').
sintoma_enfermedad(eclampsia, 'convulsiones').
trata_enfermedad(quina, 'tos ferina').
trata_enfermedad(quina, 'asma').
trata_enfermedad(quina, tetano).
trata_enfermedad(quina, epilepsia).
trata_enfermedad(quina, eclampsia).
accion_efecto_planta(quina, antiasmatico).
accion_efecto_planta(quina, antimicrobiano).
modo_tratamiento(quina, 'una a dos tazas al dia').
precaucion_planta(quina, alergia).
precaucion_planta(quina, 'no usar en embarazo').
medicamento(quina, quinina).
elementos(quina, [quinina, flavonoides, agua]).
imagen_planta(quina,'imgs/quina.jpg').


% Pagina 150 tila
planta(tila).
nombre_cientifico(tila, 'Tilia mexicana').
continente_origen(tila, 'America').
pais_origen(tila, 'Mexico').
modo_preparacion(tila, 'Infusion').
enfermedad(insomnio).
enfermedad(ansiedad).
enfermedad(hipertension).
sintoma_enfermedad(insomnio, dificultad_para_dormir).
trata_enfermedad(tila, insomnio).
trata_enfermedad(tila, ansiedad).
accion_efecto_planta(tila, calmante).
accion_efecto_planta(tila, sedante).
modo_tratamiento(tila, 'una vez por noche').
precaucion_planta(tila, 'hipersensibilidad').
precaucion_planta(tila, 'no usar en embarazo').
medicamento(tila, tilina).
elementos(tila, [tilina, flavonoides, agua]).
imagen_planta(tila,'imgs/tila.jpeg').


% Pagina 151 te de milpa
planta(te_de_milpa).
nombre_cientifico(te_de_milpa, 'Zea mays').
continente_origen(te_de_milpa, 'America').
pais_origen(te_de_milpa, 'Mexico').
modo_preparacion(te_de_milpa, 'Cocimiento').
enfermedad(infeccion_urinaria).
enfermedad(retencion_liquidos).
enfermedad(calculos_renales).
sintoma_enfermedad(infeccion_urinaria, dolor_al_orinar).
trata_enfermedad(te_de_milpa, infeccion_urinaria).
trata_enfermedad(te_de_milpa, retencion_liquidos).
accion_efecto_planta(te_de_milpa, diuretico).
accion_efecto_planta(te_de_milpa, depurativo).
modo_tratamiento(te_de_milpa, dos_veces_dia).
precaucion_planta(te_de_milpa, alergia_maiz).
precaucion_planta(te_de_milpa, 'no usar en embarazo').
medicamento(te_de_milpa, zeina).
elementos(te_de_milpa, [zeina, flavonoides, agua]).
imagen_planta(te_de_milpa,'imgs/te_de_milpa.jpeg').

% Pagina 152 toloache
planta(toloache).
nombre_cientifico(toloache, 'Datura stramonium').
continente_origen(toloache, 'America').
pais_origen(toloache, 'Mexico').
modo_preparacion(toloache, 'Infusion').
enfermedad(dolor_muscular).
enfermedad(asma).
enfermedad(insomnio).
sintoma_enfermedad(dolor_muscular, rigidez_muscular).
trata_enfermedad(toloache, dolor_muscular).
trata_enfermedad(toloache, asma).
accion_efecto_planta(toloache, analgesico).
accion_efecto_planta(toloache, broncodilatador).
modo_tratamiento(toloache, uso_externo_o_dosis_baja).
precaucion_planta(toloache, toxicidad_alta).
precaucion_planta(toloache, 'no usar en embarazo').
medicamento(toloache, atropina).
elementos(toloache, [atropina, flavonoides, agua]).
imagen_planta(toloache,'imgs/toloache.jpeg').

% Pagina 153 tronadora
planta(tronadora).
nombre_cientifico(tronadora, 'Tecoma stans').
continente_origen(tronadora, 'America').
pais_origen(tronadora, 'Mexico').
modo_preparacion(tronadora, 'Infusion').
enfermedad(diabetes).
enfermedad(fiebre).
enfermedad(problemas_digestivos).
sintoma_enfermedad(diabetes, glucosa_alta).
trata_enfermedad(tronadora, diabetes).
trata_enfermedad(tronadora, fiebre).
accion_efecto_planta(tronadora, hipoglucemiante).
accion_efecto_planta(tronadora, antipiretico).
modo_tratamiento(tronadora, dos_veces_dia).
precaucion_planta(tronadora, hipoglucemia).
precaucion_planta(tronadora, 'no usar en embarazo').
medicamento(tronadora, tecomina).
elementos(tronadora, [tecomina, flavonoides, agua]).
imagen_planta(tronadora,'imgs/tronadora.jpeg').

% Pagina 154 tripa de judas
planta(tripa_de_judas).
nombre_cientifico(tripa_de_judas, 'Leonotis nepetifolia').
continente_origen(tripa_de_judas, 'America').
pais_origen(tripa_de_judas, 'Mexico').
modo_preparacion(tripa_de_judas, 'Cocimiento').
enfermedad(tos).
enfermedad(gripe).
enfermedad(dolor_estomacal).
sintoma_enfermedad(tos, irritacion_garganta).
trata_enfermedad(tripa_de_judas, tos).
trata_enfermedad(tripa_de_judas, gripe).
accion_efecto_planta(tripa_de_judas, expectorante).
accion_efecto_planta(tripa_de_judas, antiespasmodico).
modo_tratamiento(tripa_de_judas, tres_veces_dia).
precaucion_planta(tripa_de_judas, dosis_excesiva).
precaucion_planta(tripa_de_judas, 'no usar en embarazo').
medicamento(tripa_de_judas, leonotina).
elementos(tripa_de_judas, [leonotina, flavonoides, agua]).
imagen_planta(tripa_de_judas,'imgs/tripa_de_judas.jpeg').

% Pagina 155 uva
planta(uva).    
nombre_cientifico(uva, vitis_vinifera).
continente_origen(uva, Europa).
pais_origen(uva, Espana).
modo_preparacion(uva, jugo_o_consumo_directo).
enfermedad(estrenimiento).
enfermedad(hipertension).
enfermedad(anemia).
sintoma_enfermedad(estrenimiento, dificultad_evacuar).
trata_enfermedad(uva, estrenimiento).
trata_enfermedad(uva, hipertension).
accion_efecto_planta(uva, antioxidante).
accion_efecto_planta(uva, laxante).
modo_tratamiento(uva, consumo_diario).
precaucion_planta(uva, diabetes).
precaucion_planta(uva, 'no usar en embarazo').
medicamento(uva, resveratrol).
elementos(uva, [resveratrol, flavonoides, agua]).
imagen_planta(uva,'imgs/uva.jpeg').

