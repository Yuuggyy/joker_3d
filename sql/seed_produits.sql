-- ── SEED PRODUITS : Joker ──────────────────────────────
INSERT INTO public.restaurants (nom, slug)
VALUES ('Joker', 'joker')
ON CONFLICT (slug) DO NOTHING;

DO $$
DECLARE rid UUID;
BEGIN
  SELECT id INTO rid FROM public.restaurants WHERE slug = 'joker';
  INSERT INTO public.produits (restaurant_id, nom, description, prix, categorie, disponible) VALUES
    (rid, 'Ailes de Poulet x6', 'Ailes epicees, sauce dip', 8.00, 'Entrees et Snacks', true),
    (rid, 'Salade Mixte', 'Tomates, concombres, oignons, vinaigrette', 6.00, 'Entrees et Snacks', true),
    (rid, 'Samoussa x4', 'Farce viande ou legumes', 5.00, 'Entrees et Snacks', true),
    (rid, 'Frittes Maison', NULL, 3.00, 'Entrees et Snacks', true),
    (rid, 'Poulet Braise + Riz', 'Demi-poulet braise, riz jaune, salade', 14.00, 'Plats Principaux', true),
    (rid, 'Riz au Gras Viande', 'Riz cuisines avec viande de boeuf, epices', 10.00, 'Plats Principaux', true),
    (rid, 'Spaghetti Bolognaise', 'Pates, viande hachee, sauce tomate', 10.00, 'Plats Principaux', true),
    (rid, 'Poulet Roti au Four', 'Poulet entier roti, herbes, pommes de terre', 16.00, 'Plats Principaux', true),
    (rid, 'Steak Boeuf sauce champignons', 'Entrecote 250g, sauce champignons, frites', 18.00, 'Grillades', true),
    (rid, 'Poisson Braise', 'Tilapia ou capitaine braise, citron-piment', 12.00, 'Grillades', true),
    (rid, 'Brochettes Mixtes', 'Boeuf, poulet, legumes grilles', 14.00, 'Grillades', true),
    (rid, 'Cocktail Maison Joker', 'Recette secrete du bar Joker', 7.00, 'Bar et Cocktails', true),
    (rid, 'Mojito', 'Rhum, menthe, citron vert, soda', 8.00, 'Bar et Cocktails', true),
    (rid, 'Whisky Joker Special', 'Blend selectionne, glacons', 10.00, 'Bar et Cocktails', true),
    (rid, 'Biere Primus 65cl', NULL, 4.00, 'Bar et Cocktails', true),
    (rid, 'Vin Rouge (verre)', NULL, 7.00, 'Bar et Cocktails', true),
    (rid, 'Jus Frais', 'Mangue, passion, ananas', 4.00, 'Bar et Cocktails', true),
    (rid, 'Tiramisu Maison', NULL, 8.00, 'Desserts', true),
    (rid, 'Glace 2 boules', 'Vanille, chocolat ou fraise', 4.00, 'Desserts', true)
  ON CONFLICT DO NOTHING;
END $$;
