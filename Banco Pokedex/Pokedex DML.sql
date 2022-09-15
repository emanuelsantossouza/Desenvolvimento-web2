-- COMANDO DML - INSERT, UPDATE e DELETE
INSERT INTO Types(Name, Color) VALUES
('Aço','#aab'),
('Água','#39f'),
('Dragão','#76e'),
('Elétrico','#fc3'),
('Fada','#e9e'),
('Fantasma','#66b'),
('Fogo','#f42'),
('Gelo','#6cf'),
('Inseto','#abc'),
('Lutador','#b54'),
('Normal','#aa9'),
('Pedra','#ba6'),
('Planta','#7c5'),
('Psíquico','#f59'),
('Sombrio','#754'),
('Terrestre','#db5'),
('Venenoso','#a59'),
('Voador','#89f');

INSERT INTO Gender(Name) VALUES
('Masculino'),
('Feminino'),
('Masculino e Feminino'),
('Desconhecido');

INSERT INTO Generation(Name) VALUES
('Kanto (1ª Geração)'),
('Johto (2ª Geração)'),
('Hoenn (3ª Geração)'),
('Sinnoh (4ª Geração)'),
('Unova (5ª Geração)'),
('Kalos (6ª Geração)'),
('Alola (7ª Geração)'),
('Galar (8ª Geração)');

INSERT INTO Pokemons VALUES
(1, null, 1, 3, 'Bulbasaur', 'Bulbasaur pode ser visto cochilando sob luz solar intensa. Há uma semente em suas costas. Ao absorver os raios do sol, sua semente cresce progressivamente.', 0.7, 6.9, '\\img\\pokemons\\001.png', 'https://cdn.jsdelivr.net/gh/heypikachu/pokedex@main/BULBASAUR-TESTE.gif'),
(2, 1, 1, 3, 'Ivysaur', 'Há um broto nas costas desse Pokémon. Para suportar seu peso, as pernas e o tronco de Ivysaur ficam grossos e fortes. Se começar a passar mais tempo deitado sob a luz do sol, é um sinal de que o broto florescerá em uma flor grande em breve.', 1, 13, '\\img\\pokemons\\002.png', 'https://1.bp.blogspot.com/-DDpPb4HZVnY/YGhK9EFII6I/AAAAAAAAVOY/8naDqtCCHYU2MoowlS3OfYTw_YLSDyA_wCLcBGAsYHQ/s0/Ivysaur.gif'),
(3, 2, 1, 3, 'Venusaur', 'Há uma flor grande nas costas de Venusaur. Diz-se que a flor adquire cores vivas se receber muita nutrição e luz solar. O aroma da flor acalma as emoções das pessoas.', 2, 100, '\\img\\pokemons\\003.png', 'https://1.bp.blogspot.com/-zm9x6OM-RTU/YGhQEC4hmaI/AAAAAAAAVOo/NYlvcKp_pk4ByZIK4iKBVXNLztTvrPl3wCLcBGAsYHQ/s0/Venusaur.gif'),
(4, null, 1, 3, 'Charmander', 'A chama que queima na ponta da cauda é uma indicação de suas emoções. A chama tremula quando Charmander está se divertindo. Se o Pokémon se enfurecer, a chama queima ferozmente.', 0.6, 8.5, '\\img\\pokemons\\004.png', 'https://1.bp.blogspot.com/-MYtmyCfdo6w/YGhUtxrcIBI/AAAAAAAAVO0/L7jOvhQef7kpTz06MPgrMkr0CDIuMRGhACLcBGAsYHQ/s0/Charmander.gif'),
(5, 4, 1, 3, 'Charmeleon', 'Charmeleon impiedosamente destrói seus inimigos usando suas garras afiadas. Se encontrar um inimigo forte, ele se torna agressivo. Nesse estado excitado, a chama na ponta de sua cauda brilha com uma cor branca azulada.', 1.1, 19, '\\img\\pokemons\\005.png', 'https://1.bp.blogspot.com/-_TRFfGklzGM/YGhXXXRL6WI/AAAAAAAAVO8/ep2dRYIDDqI79Vje2C8YxMHNcxiqqb3SACLcBGAsYHQ/s0/Charmeleon.gif'),
(6, 5, 1, 3, 'Charizard', 'Charizard voa pelo céu em busca de oponentes poderosos. Ele respira um calor tão grande que derrete qualquer coisa. No entanto, nunca dá um sopro ardente a qualquer oponente mais fraco que ele.', 1.7, 90.5, '\\img\\pokemons\\006.png', 'https://1.bp.blogspot.com/-AFTQs9XdE1E/YGhh060IA0I/AAAAAAAAVPI/UlABIHCfRtkpsefma4OhYlegjgEXSdt7ACLcBGAsYHQ/s0/Charizard.gif'),
(7, null, 1, 3, 'Squirtle', 'A concha de Squirtle não é apenas usada para proteção. A forma arredondada da concha e as ranhuras na superfície ajudam a minimizar a resistência na água, permitindo que este Pokémon nade em alta velocidade.', 0.5, 9, '\\img\\pokemons\\007.png', 'https://1.bp.blogspot.com/-VFgGoEPugz8/YGhm4GeMS7I/AAAAAAAAVPk/h1lzAavDpGYQRVDQ_bmffdih-0OPi8RrACLcBGAsYHQ/s0/Squirtle.gif'),
(8, 7, 1, 3, 'Wartortle', 'Sua cauda é grande e coberta com um pêlo rico e grosso. A cauda torna-se cada vez mais profunda na cor à medida que Wartortle envelhece. Os arranhões em sua concha são uma evidência da dureza deste Pokémon como um lutador.', 1, 22.5, '\\img\\pokemons\\008.png', 'https://1.bp.blogspot.com/-a010P6CYRP4/YGhpHjMpnQI/AAAAAAAAVPs/oH1iTUT-IKwjETIH0hC1uajoGZE9YQr-ACLcBGAsYHQ/s0/Wartortle.gif'),
(9, 8, 1, 3, 'Blastoise', 'Blastoise tem bicos de água que se projetam de sua concha. Os bicos de água são muito precisos. Eles podem disparar balas de água com precisão suficiente para atingir latas vazias a uma distância de mais de 60 metros.', 1.6, 85.5, '\\img\\pokemons\\009.png', 'https://1.bp.blogspot.com/-2BhwQx4M_6w/YGhqitEqDtI/AAAAAAAAVP0/Qmb31Ng98FoF7hiuML-IBo4vGaiPyZP6gCLcBGAsYHQ/s0/Blastoise.gif');

INSERT INTO PokemonTypes VALUES
(1, 13), (1, 17),
(2, 13), (2, 17),
(3, 13), (3, 17),
(4, 7),
(5, 7),
(6, 7), (6, 18),
(7, 2),
(8, 2),
(9, 2);











