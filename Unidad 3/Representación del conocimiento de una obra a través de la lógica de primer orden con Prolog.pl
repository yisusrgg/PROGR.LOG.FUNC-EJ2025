% BASE DE CONOCIMIENTO DE HERBOLARIA MÉDICA
% "El Yerberito Ilustrado" - Rius (Eduardo del Río)

% HECHOS BÁSICOS

% Planta(NombreComún, NombreCientífico)
planta(abrojo, 'Xanthium strumarium').
planta(adormidera, 'Papaver somniferum').
planta(belladona, 'Atropa belladonna').
planta(boldo, 'Peumus boldus').
planta(bugambilia, 'Bougainvillea spectabilis').
planta(cardo_santo, 'Cnicus benedictus').
planta(cola_de_caballo, 'Equisetum arvense').
planta(diente_de_leon, 'Taraxacum officinale').
planta(genciana, 'Gentiana lutea').
planta(gordolobo, 'Verbascum thapsus').
planta(guayacan, 'Guaiacum sanctum').
planta(hamamelis, 'Hamamelis virginica').
planta(pasiflora, 'Passiflora incarnata').
planta(pericon, 'Tagetes lucida').
planta(prodigiosa, 'Brickellia grandiflora').
planta(retama, 'Retama monosperma').
planta(ricino, 'Ricinus communis').
planta(ruda, 'Ruta graveolens').
planta(ruibarbo, 'Rheum palmatum').
planta(salvia, 'Salvia officinalis').
planta(sensativa, 'Mimosa pudica'). % Págs. 145-149
planta(simonillo, 'Laennecia filaginoides'). % Págs. 145-149
planta(tamarindo, 'Tamarindus indica'). % Págs. 145-149
planta(tabachin, 'Caesalpinia pulcherrima'). % Págs. 145-149
planta(taray, 'Tamarix gallica'). % Págs. 145-149
planta(toloache, 'Datura stramonium').
planta(tronadora, 'Tecoma stans').

% PROPIEDADES MEDICINALES
propiedad(diuretico).
propiedad(hepatica).
propiedad(expectorante).
propiedad(analgesico).
propiedad(antiespasmodico).
propiedad(antiinflamatorio).
propiedad(antipiretico).
propiedad(vermifugo).
propiedad(sedante).
propiedad(afrodisiaco).
propiedad(emoliente).
propiedad(astringente).
propiedad(carminativo).
propiedad(antitusivo).
propiedad(digestivo).
propiedad(laxante).
propiedad(emenagogo).
propiedad(vulnerario).
propiedad(hipoglucemiante). % Para diabetes
propiedad(antidiabetico). % Para diabetes
propiedad(antimicrobiano). % Para infecciones

% PARTES UTILIZABLES
parte(hojas).
parte(flores).
parte(raiz).
parte(corteza).
parte(semillas).
parte(tallo).
parte(fruto).
parte(planta_completa).

% MÉTODOS DE PREPARACIÓN
metodo(infusion).
metodo(tintura).
metodo(cataplasma).
metodo(jugo).
metodo(maceracion).
metodo(cocimiento).
metodo(gargaras).
metodo(compresas).
metodo(inhalacion).

% ENFERMEDADES/CONDICIONES
enfermedad(problemas_hepaticos).
enfermedad(problemas_renales).
enfermedad(infecciones_urinarias).
enfermedad(edemas).
enfermedad(insomnio).
enfermedad(ansiedad).
enfermedad(falta_de_apetito).
enfermedad(indigestion).
enfermedad(menstruacion_irregular).
enfermedad(dolores_estomacales).
enfermedad(diabetes).
enfermedad(problemas_digestivos).
enfermedad(dolor).
enfermedad(tos).
enfermedad(fiebre).
enfermedad(inflamacion).
enfermedad(diarrea).
enfermedad(problemas_respiratorios).
enfermedad(inflamacion_bucal).
enfermedad(heridas).
enfermedad(parasitos_intestinales).
enfermedad(problemas_circulatorios).

% RELACIONES PRINCIPALES

% Propiedades de las plantas
tiene_propiedad(diente_de_leon, diuretico).
tiene_propiedad(diente_de_leon, depurativo).
tiene_propiedad(cola_de_caballo, diuretico).
tiene_propiedad(cola_de_caballo, antiinflamatorio).
tiene_propiedad(belladona, antiespasmodico).
tiene_propiedad(belladona, analgesico).
tiene_propiedad(pasiflora, sedante).
tiene_propiedad(pasiflora, ansiolitico).
tiene_propiedad(genciana, digestivo).
tiene_propiedad(genciana, aperitivo).
tiene_propiedad(ruda, emenagogo).
tiene_propiedad(ruda, antiespasmodico).
tiene_propiedad(prodigiosa, hipoglucemiante).
tiene_propiedad(prodigiosa, digestivo).
tiene_propiedad(tronadora, antidiabetico).
tiene_propiedad(tronadora, diuretico).
tiene_propiedad(toloache, sedante).
tiene_propiedad(toloache, analgesico).

% PLANTAS ASIGNADAS (págs. 145-149)
% Sensativa (Mimosa pudica)
tiene_propiedad(sensativa, sedante).
tiene_propiedad(sensativa, analgesico).
tiene_propiedad(sensativa, antiinflamatorio).
planta_trata(sensativa, insomnio).
planta_trata(sensativa, ansiedad).
planta_trata(sensativa, dolor).
parte_utilizada(sensativa, hojas).
parte_utilizada(sensativa, raiz).
metodo_preparacion(sensativa, infusion).
metodo_preparacion(sensativa, tintura).
contraindicacion(sensativa, embarazo).

% Simonillo (Acacia farnesiana)
tiene_propiedad(simonillo, astringente).
tiene_propiedad(simonillo, antimicrobiano).
tiene_propiedad(simonillo, antiinflamatorio).
planta_trata(simonillo, diarrea).
planta_trata(simonillo, inflamacion_bucal).
planta_trata(simonillo, heridas).
parte_utilizada(simonillo, corteza).
parte_utilizada(simonillo, flores).
metodo_preparacion(simonillo, cocimiento).
metodo_preparacion(simonillo, gargaras).

% Tamarindo (Tamarindus indica)
tiene_propiedad(tamarindo, laxante).
tiene_propiedad(tamarindo, digestivo).
tiene_propiedad(tamarindo, antipiretico).
planta_trata(tamarindo, estrenimiento).
planta_trata(tamarindo, fiebre).
planta_trata(tamarindo, problemas_digestivos).
parte_utilizada(tamarindo, fruto).
parte_utilizada(tamarindo, hojas).
metodo_preparacion(tamarindo, infusion).
metodo_preparacion(tamarindo, jugo).

% Tabachín (Caesalpinia pulcherrima)
tiene_propiedad(tabachin, antipiretico).
tiene_propiedad(tabachin, antiinflamatorio).
tiene_propiedad(tabachin, expectorante).
planta_trata(tabachin, fiebre).
planta_trata(tabachin, inflamacion).
planta_trata(tabachin, problemas_respiratorios).
parte_utilizada(tabachin, flores).
parte_utilizada(tabachin, hojas).
metodo_preparacion(tabachin, infusion).
metodo_preparacion(tabachin, inhalacion).
contraindicacion(tabachin, embarazo).

% Taray (Tamarix gallica)
tiene_propiedad(taray, astringente).
tiene_propiedad(taray, diuretico).
tiene_propiedad(taray, antimicrobiano).
planta_trata(taray, problemas_renales).
planta_trata(taray, diarrea).
planta_trata(taray, inflamacion_bucal).
parte_utilizada(taray, corteza).
metodo_preparacion(taray, cocimiento).
metodo_preparacion(taray, gargaras).

% REGLAS DE CONSULTA

% Regla para buscar plantas por propiedad
planta_para_propiedad(Propiedad, Planta) :-
    tiene_propiedad(Planta, Propiedad).

% Regla para buscar plantas que tratan una enfermedad
planta_para_enfermedad(Enfermedad, Planta) :-
    planta_trata(Planta, Enfermedad).

% Regla para obtener información completa de una planta
informacion_planta(Planta, Cientifico, Propiedades, Partes, Metodos, Enfermedades) :-
    planta(Planta, Cientifico),
    findall(Prop, tiene_propiedad(Planta, Prop), Propiedades),
    findall(Part, parte_utilizada(Planta, Part), Partes),
    findall(Met, metodo_preparacion(Planta, Met), Metodos),
    findall(Enf, planta_trata(Planta, Enf), Enfermedades).

% Reglas para preparaciones específicas
preparacion_infusion(Planta) :-
    metodo_preparacion(Planta, infusion),
    write('Preparación: 1 cucharada de '), write(Planta),
    write(' por taza de agua hirviendo. Dejar reposar 5-10 minutos. Colar y tomar.'), nl.

preparacion_tintura(Planta) :-
    metodo_preparacion(Planta, tintura),
    write('Preparación: Macerar partes de '), write(Planta),
    write(' en alcohol (15g por cada 100ml) durante 2 semanas. Filtrar y guardar en frasco oscuro.'), nl.

preparacion_cocimiento(Planta) :-
    metodo_preparacion(Planta, cocimiento),
    write('Preparación: Hervir partes de '), write(Planta),
    write(' en agua por 10-15 minutos. Dejar enfriar, colar y tomar.'), nl.

preparacion_gargaras(Planta) :-
    metodo_preparacion(Planta, gargaras),
    write('Preparación: Realizar cocimiento de '), write(Planta),
    write(' y hacer gárgaras 3-4 veces al día.'), nl.

% Regla para mostrar contraindicaciones
mostrar_contraindicaciones(Planta) :-
    findall(Contra, contraindicacion(Planta, Contra), Contraindicaciones),
    (Contraindicaciones = [] ->
        write('No se conocen contraindicaciones importantes.'), nl;
        write('Contraindicaciones: '), write(Contraindicaciones), nl).

% Regla para tratamiento combinado
tratamiento_combinado(Enfermedad, [Planta1, Planta2]) :-
    planta_trata(Planta1, Enfermedad),
    planta_trata(Planta2, Enfermedad),
    Planta1 \= Planta2,
    write('Tratamiento combinado sugerido: '), write(Planta1),
    write(' y '), write(Planta2), nl.
