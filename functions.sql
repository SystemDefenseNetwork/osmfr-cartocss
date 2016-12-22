--
-- Name: fr_abbrev(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE OR REPLACE FUNCTION fr_abbrev(text) RETURNS text
    LANGUAGE sql IMMUTABLE PARALLEL SAFE
    AS $_$ select regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace($1,'lémentaire ','lem. '),'econdaire ','econd. '),'rimaire ','rim. '),'aternelle ','at. '),'ommerciale ','omm. '),'Direction ','Dir. '),'Esplanade ','Espl. '),'Chapelle ','Chap. '),'Cathédrale ','Cath. '),' Notre-Dame ',' N.D. '),'Avenue ','Av. '),'Boulevard ','Bd. '),'Faubourg ','Fbg. '),'Passage ','Pass. '),'Place ','Pl. '),'Promenade ','Prom. '),'Impasse ','Imp. '),'Centre Commercial ','CCial. '),'Immeuble ','Imm. '),'Lotissement ','Lot. '),'Résidence ','Rés. '),'Square ','Sq. '),'Zone Industrielle ','ZI. '),'Adjudant ','Adj. '),'Agricole ','Agric. '),'Arrondissement','Arrond.'),'Aspirant ','Asp. '),'Bâtiment ','Bat. '),'Colonel ','Col. '),'Commandant ','Cdt. '),'Commercial ','Cial. '),'Coopérative ','Coop. '),'Division ','Div. '),'Docteur ','Dr. '),'Général ','Gal. '),'Institut ','Inst. '),'Faculté ','Fac. '),'Laboratoire ','Labo. '),'Lieutenant ','Lt. '),'Maréchal ','Mal. '),'Ministère ','Min. '),'Monseigneur ','Mgr. '),'Médiathèque ','Médiat. '),'Bibliothèque ','Bibl. '),'Tribunal ','Trib. '),'Observatoire ','Obs. '),'Périphérique ','Périph. '),'Préfecture ','Préf. '),'Président ','Pdt. '),'Régiment ','Rgt. '),'Régional ','Rég. '),'Régionale ','Rég. '),'Saint-','Sᵗ-'),'Sainte-','Sᵗᵉ-'),'Sergent ','Sgt. '),'Université ','Univ. '),'Communauté d.[Aa]gglomération','Comm. d''agglo. '),'Communauté [Uu]rbaine ','Comm. urb. '),'Communauté de [Cc]ommunes ','Comm. comm. '),'Syndicat d.[Aa]gglomération ','Synd. d''agglo. '),'^Chemin ','Ch. '),'^Institut ','Inst. '),'Zone d.[Aa]ctivité.? ','Z.A. '),'Zone  [Aa]rtisanale ','Zone Art. '),'Zone [Ii]ndustrielle ','Z.I. '),' [Pp]rivé.? ',' Priv. '),' [Pp]ubli(c|que) ',' Publ. '),' [Pp]rofessionnel(|le) ',' Prof. '),' [Tt]echnologique ',' Techno. '),' [Pp]olyvalent ',' Polyv. '),'[EÉeé]tablissement(|s) ','Éts. '),' [Mm]unicipal(|e) ',' Munic. '),' [Dd]épartemental(|e) ',' Départ. '),' [EÉeé]lectrique ',' Élect. '),' [Ss]upérieur(|e) ',' Sup. ') $_$;

--
-- Name: to_int(text); Type: FUNCTION; Schema: public; Owner: osm2pgsql
--

CREATE OR REPLACE FUNCTION to_int(text) RETURNS bigint
    LANGUAGE sql IMMUTABLE PARALLEL SAFE
    AS $_$ select coalesce(left(regexp_replace($1,'^(|\-)([0-9]*).*','\10\2'),12),'0')::bigint; $_$;