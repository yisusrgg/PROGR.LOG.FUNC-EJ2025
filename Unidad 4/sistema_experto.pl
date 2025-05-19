:- use_module(library(pce)).
:- use_module(conocimientos).

inicio :-
    new(Dialogo, dialog('Sistema Experto - Plantas Medicinales')),

    % Menú de opciones de listado
    new(MenuListado, menu('Listados', cycle)),
    send_list(MenuListado, append,
        ['-- Selecciona --',
        'Listado de plantas medicinales',
        'Listado de acciones/efectos que tienen las plantas',
        'Listado de plantas y sus acciones/efectos sobre el organismo',
        'Listado de plantas medicinales y su nombre cientifico',
        'Listado de enfermedades que curan las plantas',
        'Listado de formas de preparacion para tratamiento de enfermedades con plantas',
        'Listado de origen de las plantas medicinales',
        'Listado de elementos que se encuentran en las plantas',
        'Listado de plantas que producen medicamentos',
        'Botiquin de plantas'
        ]),

    % Menú de consultas específicas (requieren entrada)
    new(MenuConsulta, menu('Consultas Especificas', cycle)),
    send_list(MenuConsulta, append,
        ['-- Selecciona --',
        'Informacion general de una planta en especifico',
        'Acciones o efectos de una planta en especifico',
        'Plantas con un efecto especifico',
        'Enfermedades que cura una planta en especifico',
        'Plantas que tratan una enfermedad en especifico',
        'Modos de preparacion de una planta en especifico',
        'Tratamiento y su preparacion para alguna enfermedad en especifico',
        'Origen de una planta en especifico',
        'Elementos de una planta en especifico',
        'Medicamentos que produce una planta en especifico'
        ]),

    % Entrada de texto
    new(Entrada, text_item('Nombre/planta/enfermedad')),
    
    % Campo de texto para mostrar resultados
    new(Texto, editor),
    send(Texto, size, size(72, 15)),
    send(Texto, editable, @off),

    % Botón consultar
    send(Dialogo, append, MenuListado),
    send(Dialogo, append, MenuConsulta),
    send(Dialogo, append, Entrada),
    send(Dialogo, append, Texto),
    send(Dialogo, append, button('Consultar',
        message(@prolog, consulta_doble_menu,
                MenuListado?selection,
                MenuConsulta?selection,
                Entrada?value,
                Texto))),
    send(Dialogo, append, button('Salir', message(Dialogo, destroy))),
    
    % Caja de texto para buscar imagen
    new(EntradaImagen, text_item('Nombre de la planta para imagen')),
    send(Dialogo, append, EntradaImagen),
    send(Dialogo, append, button('Ver Imagen',
        message(@prolog, mostrar_imagen_planta, EntradaImagen?value))),

    % Si selecciona una opción en un menú, desactiva el otro
    send(MenuListado, message, message(@prolog, limpiar_menu_listado, MenuConsulta, Entrada)),
    send(MenuConsulta, message, message(@prolog, limpiar_menu, MenuListado)),

    send(Dialogo, open).


% Predicado principal para enrutar la consulta
consulta_general('Informacion general de una planta en especifico', Entrada, Texto) :-consultar_planta(Entrada, Texto).

consulta_general('Listado de plantas medicinales', _, Texto) :-
    findall(P, planta(P), Plantas),
    mostrar_lista('Plantas medicinales:', Plantas, Texto).

consulta_general('Listado de acciones/efectos que tienen las plantas', _, Texto) :-
    findall(E, accion_efecto_planta(_, E), Lista),
    sort(Lista, Efectos),
    mostrar_lista('Acciones o efectos de las plantas:', Efectos, Texto).

consulta_general('Listado de plantas y sus acciones/efectos sobre el organismo', _, Texto) :-
    findall((P, E), accion_efecto_planta(P, E), Lista),
    mostrar_parejas('Plantas y sus efectos:', Lista, Texto).

consulta_general('Acciones o efectos de una planta en especifico', Entrada, Texto) :-
    ( Entrada = '' ->
        send(Texto, clear),
        send(Texto, insert, 'No se ha introducido ninguna planta.')
    ;
        atom_string(PlantaRaw, Entrada),
        downcase_atom(PlantaRaw, Planta),
        findall(E, accion_efecto_planta(Planta, E), Efectos),
        (   Efectos = []
        ->  format(atom(Msg), 'No se encontraron efectos para la planta: ~w', [Planta]),
            send(Texto, clear),
            send(Texto, insert, Msg)
        ;   mostrar_lista('Efectos de la planta:', Efectos, Texto)
        )
    ).

consulta_general('Plantas con un efecto especifico', Entrada, Texto) :-
    ( Entrada = '' ->
        send(Texto, clear),
        send(Texto, insert, 'No se ha introducido ningun efecto.')
    ;
        atom_string(EfectoRaw, Entrada),
        downcase_atom(EfectoRaw, Efecto),
        findall(P, accion_efecto_planta(P, Efecto), Plantas),
        (   Plantas = []
        ->  format(atom(Msg), 'No se encontraron plantas con el efecto: ~w', [Efecto]),
            send(Texto, clear),
            send(Texto, insert, Msg)
        ;   mostrar_lista('Plantas con ese efecto:', Plantas, Texto)
        )
    ).

consulta_general('Listado de plantas medicinales y su nombre cientifico', _, Texto) :-
    findall((P, N), nombre_cientifico(P, N), Lista),
    mostrar_parejas('Plantas y su nombre cientifico:', Lista, Texto).

consulta_general('Listado de enfermedades que curan las plantas', _, Texto) :-
    findall(E, trata_enfermedad(_, E), Lista),
    sort(Lista, Enfermedades),
    mostrar_lista('Enfermedades que curan las plantas:', Enfermedades, Texto).

consulta_general('Enfermedades que cura una planta en especifico', Entrada, Texto) :-
    ( Entrada = '' ->
        send(Texto, clear),
        send(Texto, insert, 'No se ha introducido ninguna enfermedad.')
    ;
        atom_string(PlantaRaw, Entrada),
        downcase_atom(PlantaRaw, Planta),
        findall(E, trata_enfermedad(Planta, E), Enfermedades),
        (   Enfermedades = []
        ->  format(atom(Msg), 'No se encontraron enfermedades para la planta: ~w', [Planta]),
            send(Texto, clear),
            send(Texto, insert, Msg)
        ;   mostrar_lista('Enfermedades que trata la planta:', Enfermedades, Texto)
        )
    ).

consulta_general('Plantas que tratan una enfermedad en especifico', Entrada, Texto) :-
    ( Entrada = '' ->
        send(Texto, clear),
        send(Texto, insert, 'No se ha introducido ninguna enfermedad.')
    ;
        atom_string(EnfermedadRaw, Entrada),
        downcase_atom(EnfermedadRaw, Enfermedad),
        findall(P, trata_enfermedad(P, Enfermedad), Plantas),
        (   Plantas = []
        ->  format(atom(Msg), 'No se encontraron plantas que traten la enfermedad: ~w', [Enfermedad]),
            send(Texto, clear),
            send(Texto, insert, Msg)
        ;   mostrar_lista('Plantas que tratan la enfermedad:', Plantas, Texto)
        )
    ).

consulta_general('Listado de formas de preparacion para tratamiento de enfermedades con plantas', _, Texto) :-
    findall(F, modo_preparacion(_, F), Lista),
    sort(Lista, Formas),
    mostrar_lista('Formas de preparacion:', Formas, Texto).

consulta_general('Modos de preparacion de una planta en especifico', Entrada, Texto) :-
    ( Entrada = '' ->
        send(Texto, clear),
        send(Texto, insert, 'No se ha introducido ninguna planta.')
    ;
        atom_string(PlantaRaw, Entrada),
        downcase_atom(PlantaRaw, Planta),
        findall(F, modo_preparacion(Planta, F), Formas),
        (   Formas = []
        ->  format(atom(Msg), 'No se encontraron modos de preparacion para la planta: ~w', [Planta]),
            send(Texto, clear),
            send(Texto, insert, Msg)
        ;   mostrar_lista('Modos de preparacion de la planta:', Formas, Texto)
        )
    ).

consulta_general('Tratamiento y su preparacion para alguna enfermedad en especifico', Entrada, Texto) :-
    ( Entrada = '' ->
        send(Texto, clear),
        send(Texto, insert, 'No se ha introducido ninguna enfermedad.')
    ;
        atom_string(EnfermedadRaw, Entrada),
        downcase_atom(EnfermedadRaw, Enfermedad),
        findall((P, T), (trata_enfermedad(P, Enfermedad), modo_tratamiento(P, T)), Tratamientos),
        (   Tratamientos = []
        ->  format(atom(Msg), 'No se encontraron tratamientos para la enfermedad: ~w', [Enfermedad]),
            send(Texto, clear),
            send(Texto, insert, Msg)
        ;   mostrar_parejas('Tratamientos y su preparacion:', Tratamientos, Texto)
        )
    ).

consulta_general('Listado de origen de las plantas medicinales', _, Texto) :-
    findall((Planta, Pais, Continente),
            (planta(Planta),
             pais_origen(Planta, Pais),
             continente_origen(Planta, Continente)),
            Lista),
    sort(Lista, Origenes),
    findall(Str,
        (member((Planta, Pais, Continente), Origenes),
         format(atom(Str), '~w: Pais: ~w, Continente: ~w', [Planta, Pais, Continente])),
        Lineas),
    atomic_list_concat(Lineas, '\n', Info),
    send(Texto, clear),
    send(Texto, insert, Info).

consulta_general('Origen de una planta en especifico', Entrada, Texto) :-
    ( Entrada = '' ->
        send(Texto, clear),
        send(Texto, insert, 'No se ha introducido ninguna planta.')
    ;   
        atom_string(PlantaRaw, Entrada),
        downcase_atom(PlantaRaw, Planta),
        (   continente_origen(Planta, Continente),
            pais_origen(Planta, Pais)
        ->  format(atom(Msg), 'Origen de la planta:\nContinente: ~w\nPais: ~w', [Continente, Pais]),
            send(Texto, clear),
            send(Texto, insert, Msg)
        ;   send(Texto, clear),
            send(Texto, insert, 'No se encontro informacion de origen para la planta.')
        )
    ).

consulta_general('Listado de elementos que se encuentran en las plantas', _, Texto) :-
    findall(Elem, (elementos(_, Lista), member(Elem, Lista)), Todos),
    sort(Todos, Unicos),
    mostrar_lista('Elementos presentes en las plantas:', Unicos, Texto).


consulta_general('Listado de plantas que producen medicamentos', _, Texto) :-
    findall(P, medicamento(P, _), Plantas),
    sort(Plantas, Unicas),
    mostrar_lista('Plantas que producen medicamentos:', Unicas, Texto).

consulta_general('Elementos de una planta en especifico', Entrada, Texto) :-
    ( Entrada = '' ->
        send(Texto, clear),
        send(Texto, insert, 'No se ha introducido ninguna planta.')
    ;
        atom_string(PlantaRaw, Entrada),
        downcase_atom(PlantaRaw, Planta),
        (   elementos(Planta, Lista)
        ->  mostrar_lista('Elementos de la planta:', Lista, Texto)
        ;   send(Texto, clear),
            send(Texto, insert, 'No se encontraron elementos para la planta.')
        )
    ).

consulta_general('Medicamentos que produce una planta en especifico', Entrada, Texto) :-
    ( Entrada = '' ->
        send(Texto, clear),
        send(Texto, insert, 'No se ha introducido ninguna planta.')
    ;
        atom_string(PlantaRaw, Entrada),
        downcase_atom(PlantaRaw, Planta),
        findall(M, medicamento(Planta, M), Medicamentos),
        (   Medicamentos = []
        ->  send(Texto, clear),
            send(Texto, insert, 'No se encontraron medicamentos para la planta.')
        ;   mostrar_lista('Medicamentos que produce la planta:', Medicamentos, Texto)
        )
    ).

consulta_general('Botiquin de plantas', _, Texto) :-
    findall((P, E), trata_enfermedad(P, E), Lista),
    findall(Str, (member((P, Enf), Lista), format(atom(Str), 'La planta ~w sirve para tratar ~w', [P, Enf])), Lineas),
    atomic_list_concat(Lineas, '\n', Info),
    send(Texto, clear),
    send(Texto, insert, Info).




% logica para imprimir listas  --------------------------------------------------------------
% Auxiliar para mostrar listas de parejas (planta, efecto)
mostrar_parejas(Titulo, Lista, Texto) :-
    findall(Str, (member((P, E), Lista), format(atom(Str), '~w: ~w', [P, E])), Lineas),
    atomic_list_concat(Lineas, '\n', ListaStr),
    format(atom(Info), '~w\n~w', [Titulo, ListaStr]),
    send(Texto, clear),
    send(Texto, insert, Info).

% Auxiliar para mostrar listas
mostrar_lista(Titulo, Lista, Texto) :-
    atomic_list_concat(Lista, '\n ', ListaStr),
    format(atom(Info), '~w\n~w', [Titulo, ListaStr]),
    send(Texto, clear),
    send(Texto, insert, Info).
% -----------------------------------------------------------------------------------------



% logica para el menu----------------------------------------------------------------------
% Limpia el menú no seleccionado
limpiar_menu(Menu) :-
    send(Menu, selection, '-- Selecciona --').

limpiar_menu_listado(Menu, Entrada) :-
    send(Menu, selection, '-- Selecciona --'),
    send(Entrada, clear).

consulta_doble_menu(ListadoSel, ConsultaSel, Entrada, Texto) :-
    (   (ListadoSel \== '-- Selecciona --', ConsultaSel == '-- Selecciona --')
    ->  consulta_general(ListadoSel, _, Texto)
    ;   (ConsultaSel \== '-- Selecciona --', ListadoSel == '-- Selecciona --')
    ->  consulta_general(ConsultaSel, Entrada, Texto)
    ;   send(Texto, clear),
        send(Texto, insert, 'Selecciona solo una opción de uno de los menús.')
    ).

% -----------------------------------------------------------------------------------------


% logica para la primer opcion del menu de consultas esepecificas ---------------------------
% Predicado para consultar la planta
consultar_planta(NombreUsuario, Texto) :-
    ( NombreUsuario = '' ->
        send(Texto, clear),
        send(Texto, insert, 'Por favor, introduce el nombre de una planta.')
    ;
        % Convertir el nombre de la planta a minúsculas
        atom_string(PlantaRaw, NombreUsuario),
        downcase_atom(PlantaRaw, Planta), % Convertir a minúsculas
        obtener_info_planta(Planta, Info),
        send(Texto, clear), % Limpia texto antes
        send(Texto, insert, Info) % Inserta texto en el área de texto
    ).

% Definir el predicado para obtener la información de la planta
obtener_info_planta(Planta, Info) :-
    (   nombre_cientifico(Planta, NombreCientifico) ; NombreCientifico = 'Desconocido' ),
    (   continente_origen(Planta, Continente) ; Continente = 'Desconocido' ),
    (   pais_origen(Planta, Pais) ; Pais = 'Desconocido' ),
    (   modo_preparacion(Planta, Preparacion) ; Preparacion = 'Desconocido' ),
    (   accion_efecto_planta(Planta, Accion) ; Accion = 'Desconocido' ),
    (   modo_tratamiento(Planta, Tratamiento) ; Tratamiento = 'Desconocido' ),
    (   precaucion_planta(Planta, Precaucion) ; Precaucion = 'Ninguna' ),
    findall(E, trata_enfermedad(Planta, E), Enfermedades),
    (   Enfermedades \= [] ->
        atomic_list_concat(Enfermedades, ', ', EnfermedadesStr)
    ;   EnfermedadesStr = 'Ninguna'
    ),
    format(atom(Info),
        'Nombre cientifico: ~w\nOrigen: ~w, ~w\nPreparacion: ~w\nAccion: ~w\nTratamiento: ~w\nPrecaucion: ~w\nEnfermedades que trata: ~w\n',
        [NombreCientifico, Continente, Pais, Preparacion, Accion, Tratamiento, Precaucion, EnfermedadesStr]).

% -----------------------------------------------------------------------------------------

% logica para mostrar imagenes -----------------------------------------------------------
mostrar_imagen_planta(NombreUsuario) :-
    ( NombreUsuario = '' ->
        new(D, dialog('Imagen de planta')),
        send(D, append, label(msg, 'Por favor, introduce el nombre de una planta.')),
        send(D, open)
    ;
        atom_string(PlantaRaw, NombreUsuario),
        downcase_atom(PlantaRaw, Planta),
        (   imagen_planta(Planta, Ruta),
            exists_file(Ruta)
        ->  new(D, dialog('Imagen de planta')),
            new(Bitmap, bitmap(Ruta)),
            send(D, append, Bitmap),
            send(D, open)
        ;   new(D, dialog('Imagen de planta')),
            send(D, append, label(msg, 'No se encontro imagen para la planta.')),
            send(D, open)
        )
    ).