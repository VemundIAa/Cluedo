% Author:  Vemund
% Date: 24.03.2015

person('Miss Scarlett').       % 1
person('Professor Plum').      % 2
person('Mrs. Peacock').        % 3
person('Reverend Green').      % 4
person('Colonel Mustard').     % 5
person('Mrs. White').          % 6

weapon('Candlestick').         % 7
weapon('Dagger').              % 8
weapon('Lead Pipe').           % 9
weapon('Revolver').            % 10
weapon('Rope').                % 11
weapon('Wrench').              % 12

location('Kitchen').           % 13
location('Ballroom').          % 14
location('Conservatory').      % 15
location('Dining Room').       % 16
location('Billiard Room').     % 17
location('Library').           % 18
location('Lounge').            % 19
location('Hall').              % 20
location('Study').             % 21

cards2(['Miss Scarlett','Professor Plum','Mrs. Peacock','Reverend Green','Colonel Mustard','Mrs. White','Candlestick', 'Dagger', 'Lead Pipe', 'Revolver','Rope', 'Wrench', 'Kitchen','Ballroom','Conservatory' ,'Dining Room','Billiard Room','Library','Lounge','Hall','Study']).
%cards2([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21]).
%cards2(['p1','p2','p3','p4','p5','p6','w1','w2','w3','w4','w5','w6','l1','l2','l3','l4','l5','l6','l7','l8','l9']).


/* winstates([s(1,7,13),s(1,7,14),s(1,7,15),s(1,7,16),s(1,7,17),s(1,7,18),s(1,7,19),s(1,7,20),s(1,7,21),
s(1,8,13),s(1,8,14),s(1,8,15),s(1,8,16),s(1,8,17),s(1,8,18),s(1,8,19),s(1,8,20),s(1,8,21),
s(1,9,13),s(1,9,14),s(1,9,15),s(1,9,16),s(1,9,17),s(1,9,18),s(1,9,19),s(1,9,20),s(1,9,21),
s(1,10,13),s(1,10,14),s(1,10,15),s(1,10,16),s(1,10,17),s(1,10,18),s(1,10,19),s(1,10,20),s(1,10,21),
s(1,11,13),s(1,11,14),s(1,11,15),s(1,11,16),s(1,11,17),s(1,11,18),s(1,11,19),s(1,11,20),s(1,11,21),
s(1,12,13),s(1,12,14),s(1,12,15),s(1,12,16),s(1,12,17),s(1,12,18),s(1,12,19),s(1,12,20),s(1,12,21),

s(2,7,13),s(2,7,14),s(2,7,15),s(2,7,16),s(2,7,17),s(2,7,18),s(2,7,19),s(2,7,20),s(2,7,21),
s(2,8,13),s(2,8,14),s(2,8,15),s(2,8,16),s(2,8,17),s(2,8,18),s(2,8,19),s(2,8,20),s(2,8,21),
s(2,9,13),s(2,9,14),s(2,9,15),s(2,9,16),s(2,9,17),s(2,9,18),s(2,9,19),s(2,9,20),s(2,9,21),
s(2,10,13),s(2,10,14),s(2,10,15),s(2,10,16),s(2,10,17),s(2,10,18),s(2,10,19),s(2,10,20),s(2,10,21),
s(2,11,13),s(2,11,14),s(2,11,15),s(2,11,16),s(2,11,17),s(2,11,18),s(2,11,19),s(2,11,20),s(2,11,21),
s(2,12,13),s(2,12,14),s(2,12,15),s(2,12,16),s(2,12,17),s(2,12,18),s(2,12,19),s(2,12,20),s(2,12,21),

s(3,7,13),s(3,7,14),s(3,7,15),s(3,7,16),s(3,7,17),s(3,7,18),s(3,7,19),s(3,7,20),s(3,7,21),
s(3,8,13),s(3,8,14),s(3,8,15),s(3,8,16),s(3,8,17),s(3,8,18),s(3,8,19),s(3,8,20),s(3,8,21),
s(3,9,13),s(3,9,14),s(3,9,15),s(3,9,16),s(3,9,17),s(3,9,18),s(3,9,19),s(3,9,20),s(3,9,21),
s(3,10,13),s(3,10,14),s(3,10,15),s(3,10,16),s(3,10,17),s(3,10,18),s(3,10,19),s(3,10,20),s(3,10,21),
s(3,11,13),s(3,11,14),s(3,11,15),s(3,11,16),s(3,11,17),s(3,11,18),s(3,11,19),s(3,11,20),s(3,11,21),
s(3,12,13),s(3,12,14),s(3,12,15),s(3,12,16),s(3,12,17),s(3,12,18),s(3,12,19),s(3,12,20),s(3,12,21),

s(4,7,13),s(4,7,14),s(4,7,15),s(4,7,16),s(4,7,17),s(4,7,18),s(4,7,19),s(4,7,20),s(4,7,21),
s(4,8,13),s(4,8,14),s(4,8,15),s(4,8,16),s(4,8,17),s(4,8,18),s(4,8,19),s(4,8,20),s(4,8,21),
s(4,9,13),s(4,9,14),s(4,9,15),s(4,9,16),s(4,9,17),s(4,9,18),s(4,9,19),s(4,9,20),s(4,9,21),
s(4,10,13),s(4,10,14),s(4,10,15),s(4,10,16),s(4,10,17),s(4,10,18),s(4,10,19),s(4,10,20),s(4,10,21),
s(4,11,13),s(4,11,14),s(4,11,15),s(4,11,16),s(4,11,17),s(4,11,18),s(4,11,19),s(4,11,20),s(4,11,21),
s(4,12,13),s(4,12,14),s(4,12,15),s(4,12,16),s(4,12,17),s(4,12,18),s(4,12,19),s(4,12,20),s(4,12,21),

s(5,7,13),s(5,7,14),s(5,7,15),s(5,7,16),s(5,7,17),s(5,7,18),s(5,7,19),s(5,7,20),s(5,7,21),
s(5,8,13),s(5,8,14),s(5,8,15),s(5,8,16),s(5,8,17),s(5,8,18),s(5,8,19),s(5,8,20),s(5,8,21),
s(5,9,13),s(5,9,14),s(5,9,15),s(5,9,16),s(5,9,17),s(5,9,18),s(5,9,19),s(5,9,20),s(5,9,21),
s(5,10,13),s(5,10,14),s(5,10,15),s(5,10,16),s(5,10,17),s(5,10,18),s(5,10,19),s(5,10,20),s(5,10,21),
s(5,11,13),s(5,11,14),s(5,11,15),s(5,11,16),s(5,11,17),s(5,11,18),s(5,11,19),s(5,11,20),s(5,11,21),
s(5,12,13),s(5,12,14),s(5,12,15),s(5,12,16),s(5,12,17),s(5,12,18),s(5,12,19),s(5,12,20),s(5,12,21),

s(6,7,13),s(6,7,14),s(6,7,15),s(6,7,16),s(6,7,17),s(6,7,18),s(6,7,19),s(6,7,20),s(6,7,21),
s(6,8,13),s(6,8,14),s(6,8,15),s(6,8,16),s(6,8,17),s(6,8,18),s(6,8,19),s(6,8,20),s(6,8,21),
s(6,9,13),s(6,9,14),s(6,9,15),s(6,9,16),s(6,9,17),s(6,9,18),s(6,9,19),s(6,9,20),s(6,9,21),
s(6,10,13),s(6,10,14),s(6,10,15),s(6,10,16),s(6,10,17),s(6,10,18),s(6,10,19),s(6,10,20),s(6,10,21),
s(6,11,13),s(6,11,14),s(6,11,15),s(6,11,16),s(6,11,17),s(6,11,18),s(6,11,19),s(6,11,20),s(6,11,21),
s(6,12,13),s(6,12,14),s(6,12,15),s(6,12,16),s(6,12,17),s(6,12,18),s(6,12,19),s(6,12,20),s(6,12,21)]).
*/
 /*
winstates([s(p1,w1,l1),s(p1,w1,l2),s(p1,w1,l3),s(p1,w1,l4),s(p1,w1,l5),s(p1,w1,l6),s(p1,w1,l7),s(p1,w1,l8),s(p1,w1,l9),
s(p1,w2,l1),s(p1,w2,l2),s(p1,w2,l3),s(p1,w2,l4),s(p1,w2,l5),s(p1,w2,l6),s(p1,w2,l7),s(p1,w2,l8),s(p1,w2,l9),
s(p1,w3,l1),s(p1,w2,l2),s(p1,w3,l3),s(p1,w3,l4),s(p1,w3,l5),s(p1,w3,l6),s(p1,w3,l7),s(p1,w3,l8),s(p1,w3,l9),
s(p1,w4,l1),s(p1,w4,l2),s(p1,w4,l3),s(p1,w4,l4),s(p1,w4,l5),s(p1,w4,l6),s(p1,w4,l7),s(p1,w4,l8),s(p1,w4,l9),
s(p1,w5,l1),s(p1,w5,l2),s(p1,w5,l3),s(p1,w5,l4),s(p1,w5,l5),s(p1,w5,l6),s(p1,w5,l7),s(p1,w5,l8),s(p1,w5,l9),
s(p1,w6,l1),s(p1,w6,l2),s(p1,w6,l3),s(p1,w6,l4),s(p1,w6,l5),s(p1,w6,l6),s(p1,w6,l7),s(p1,w6,l8),s(p1,w6,l9),

s(p2,w1,l1),s(p2,w1,l2),s(p2,w1,l3),s(p2,w1,l4),s(p2,w1,l5),s(p2,w1,l6),s(p2,w1,l7),s(p2,w1,l8),s(p2,w1,l9),
s(p2,w2,l1),s(p2,w2,l2),s(p2,w2,l3),s(p2,w2,l4),s(p2,w2,l5),s(p2,w2,l6),s(p2,w2,l7),s(p2,w2,l8),s(p2,w2,l9),
s(p2,w3,l1),s(p2,w2,l2),s(p2,w3,l3),s(p2,w3,l4),s(p2,w3,l5),s(p2,w3,l6),s(p2,w3,l7),s(p2,w3,l8),s(p2,w3,l9),
s(p2,w4,l1),s(p2,w4,l2),s(p2,w4,l3),s(p2,w4,l4),s(p2,w4,l5),s(p2,w4,l6),s(p2,w4,l7),s(p2,w4,l8),s(p2,w4,l9),
s(p2,w5,l1),s(p2,w5,l2),s(p2,w5,l3),s(p2,w5,l4),s(p2,w5,l5),s(p2,w5,l6),s(p2,w5,l7),s(p2,w5,l8),s(p2,w5,l9),
s(p2,w6,l1),s(p2,w6,l2),s(p2,w6,l3),s(p2,w6,l4),s(p2,w6,l5),s(p2,w6,l6),s(p2,w6,l7),s(p2,w6,l8),s(p2,w6,l9),

s(p3,w1,l1),s(p3,w1,l2),s(p3,w1,l3),s(p3,w1,l4),s(p3,w1,l5),s(p3,w1,l6),s(p3,w1,l7),s(p3,w1,l8),s(p3,w1,l9),
s(p3,w2,l1),s(p3,w2,l2),s(p3,w2,l3),s(p3,w2,l4),s(p3,w2,l5),s(p3,w2,l6),s(p3,w2,l7),s(p3,w2,l8),s(p3,w2,l9),
s(p3,w3,l1),s(p3,w2,l2),s(p3,w3,l3),s(p3,w3,l4),s(p3,w3,l5),s(p3,w3,l6),s(p3,w3,l7),s(p3,w3,l8),s(p3,w3,l9),
s(p3,w4,l1),s(p3,w4,l2),s(p3,w4,l3),s(p3,w4,l4),s(p3,w4,l5),s(p3,w4,l6),s(p3,w4,l7),s(p3,w4,l8),s(p3,w4,l9),
s(p3,w5,l1),s(p3,w5,l2),s(p3,w5,l3),s(p3,w5,l4),s(p3,w5,l5),s(p3,w5,l6),s(p3,w5,l7),s(p3,w5,l8),s(p3,w5,l9),
s(p3,w6,l1),s(p3,w6,l2),s(p3,w6,l3),s(p3,w6,l4),s(p3,w6,l5),s(p3,w6,l6),s(p3,w6,l7),s(p3,w6,l8),s(p3,w6,l9),

s(p4,w1,l1),s(p4,w1,l2),s(p4,w1,l3),s(p4,w1,l4),s(p4,w1,l5),s(p4,w1,l6),s(p4,w1,l7),s(p4,w1,l8),s(p4,w1,l9),
s(p4,w2,l1),s(p4,w2,l2),s(p4,w2,l3),s(p4,w2,l4),s(p4,w2,l5),s(p4,w2,l6),s(p4,w2,l7),s(p4,w2,l8),s(p4,w2,l9),
s(p4,w3,l1),s(p4,w2,l2),s(p4,w3,l3),s(p4,w3,l4),s(p4,w3,l5),s(p4,w3,l6),s(p4,w3,l7),s(p4,w3,l8),s(p4,w3,l9),
s(p4,w4,l1),s(p4,w4,l2),s(p4,w4,l3),s(p4,w4,l4),s(p4,w4,l5),s(p4,w4,l6),s(p4,w4,l7),s(p4,w4,l8),s(p4,w4,l9),
s(p4,w5,l1),s(p4,w5,l2),s(p4,w5,l3),s(p4,w5,l4),s(p4,w5,l5),s(p4,w5,l6),s(p4,w5,l7),s(p4,w5,l8),s(p4,w5,l9),
s(p4,w6,l1),s(p4,w6,l2),s(p4,w6,l3),s(p4,w6,l4),s(p4,w6,l5),s(p4,w6,l6),s(p4,w6,l7),s(p4,w6,l8),s(p4,w6,l9),

s(p5,w1,l1),s(p5,w1,l2),s(p5,w1,l3),s(p5,w1,l4),s(p5,w1,l5),s(p5,w1,l6),s(p5,w1,l7),s(p5,w1,l8),s(p5,w1,l9),
s(p5,w2,l1),s(p5,w2,l2),s(p5,w2,l3),s(p5,w2,l4),s(p5,w2,l5),s(p5,w2,l6),s(p5,w2,l7),s(p5,w2,l8),s(p5,w2,l9),
s(p5,w3,l1),s(p5,w2,l2),s(p5,w3,l3),s(p5,w3,l4),s(p5,w3,l5),s(p5,w3,l6),s(p5,w3,l7),s(p5,w3,l8),s(p5,w3,l9),
s(p5,w4,l1),s(p5,w4,l2),s(p5,w4,l3),s(p5,w4,l4),s(p5,w4,l5),s(p5,w4,l6),s(p5,w4,l7),s(p5,w4,l8),s(p5,w4,l9),
s(p5,w5,l1),s(p5,w5,l2),s(p5,w5,l3),s(p5,w5,l4),s(p5,w5,l5),s(p5,w5,l6),s(p5,w5,l7),s(p5,w5,l8),s(p5,w5,l9),
s(p5,w6,l1),s(p5,w6,l2),s(p5,w6,l3),s(p5,w6,l4),s(p5,w6,l5),s(p5,w6,l6),s(p5,w6,l7),s(p5,w6,l8),s(p5,w6,l9),

s(p6,w1,l1),s(p6,w1,l2),s(p6,w1,l3),s(p6,w1,l4),s(p6,w1,l5),s(p6,w1,l6),s(p6,w1,l7),s(p6,w1,l8),s(p6,w1,l9),
s(p6,w2,l1),s(p6,w2,l2),s(p6,w2,l3),s(p6,w2,l4),s(p6,w2,l5),s(p6,w2,l6),s(p6,w2,l7),s(p6,w2,l8),s(p6,w2,l9),
s(p6,w3,l1),s(p6,w2,l2),s(p6,w3,l3),s(p6,w3,l4),s(p6,w3,l5),s(p6,w3,l6),s(p6,w3,l7),s(p6,w3,l8),s(p6,w3,l9),
s(p6,w4,l1),s(p6,w4,l2),s(p6,w4,l3),s(p6,w4,l4),s(p6,w4,l5),s(p6,w4,l6),s(p6,w4,l7),s(p6,w4,l8),s(p6,w4,l9),
s(p6,w5,l1),s(p6,w5,l2),s(p6,w5,l3),s(p6,w5,l4),s(p6,w5,l5),s(p6,w5,l6),s(p6,w5,l7),s(p6,w5,l8),s(p6,w5,l9),
s(p6,w6,l1),s(p6,w6,l2),s(p6,w6,l3),s(p6,w6,l4),s(p6,w6,l5),s(p6,w6,l6),s(p6,w6,l7),s(p6,w6,l8),s(p6,w6,l9)]).

*/
winstates([s('Miss Scarlett','Candlestick','Kitchen'),s('Miss Scarlett','Candlestick','Ballroom'),s('Miss Scarlett','Candlestick','Conservatory'),s('Miss Scarlett','Candlestick','Dining Room'),s('Miss Scarlett','Candlestick','Billiard Room'),s('Miss Scarlett','Candlestick','Library'),s('Miss Scarlett','Candlestick','Lounge'),s('Miss Scarlett','Candlestick','Hall'),s('Miss Scarlett','Candlestick','Study'),
s('Miss Scarlett','Dagger','Kitchen'),s('Miss Scarlett','Dagger','Ballroom'),s('Miss Scarlett','Dagger','Conservatory'),s('Miss Scarlett','Dagger','Dining Room'),s('Miss Scarlett','Dagger','Billiard Room'),s('Miss Scarlett','Dagger','Library'),s('Miss Scarlett','Dagger','Lounge'),s('Miss Scarlett','Dagger','Hall'),s('Miss Scarlett','Dagger','Study'),
s('Miss Scarlett','Lead Pipe','Kitchen'),s('Miss Scarlett','Dagger','Ballroom'),s('Miss Scarlett','Lead Pipe','Conservatory'),s('Miss Scarlett','Lead Pipe','Dining Room'),s('Miss Scarlett','Lead Pipe','Billiard Room'),s('Miss Scarlett','Lead Pipe','Library'),s('Miss Scarlett','Lead Pipe','Lounge'),s('Miss Scarlett','Lead Pipe','Hall'),s('Miss Scarlett','Lead Pipe','Study'),
s('Miss Scarlett','Revolver','Kitchen'),s('Miss Scarlett','Revolver','Ballroom'),s('Miss Scarlett','Revolver','Conservatory'),s('Miss Scarlett','Revolver','Dining Room'),s('Miss Scarlett','Revolver','Billiard Room'),s('Miss Scarlett','Revolver','Library'),s('Miss Scarlett','Revolver','Lounge'),s('Miss Scarlett','Revolver','Hall'),s('Miss Scarlett','Revolver','Study'),
s('Miss Scarlett','Rope','Kitchen'),s('Miss Scarlett','Rope','Ballroom'),s('Miss Scarlett','Rope','Conservatory'),s('Miss Scarlett','Rope','Dining Room'),s('Miss Scarlett','Rope','Billiard Room'),s('Miss Scarlett','Rope','Library'),s('Miss Scarlett','Rope','Lounge'),s('Miss Scarlett','Rope','Hall'),s('Miss Scarlett','Rope','Study'),
s('Miss Scarlett','Wrench','Kitchen'),s('Miss Scarlett','Wrench','Ballroom'),s('Miss Scarlett','Wrench','Conservatory'),s('Miss Scarlett','Wrench','Dining Room'),s('Miss Scarlett','Wrench','Billiard Room'),s('Miss Scarlett','Wrench','Library'),s('Miss Scarlett','Wrench','Lounge'),s('Miss Scarlett','Wrench','Hall'),s('Miss Scarlett','Wrench','Study'),

s('Professor Plum','Candlestick','Kitchen'),s('Professor Plum','Candlestick','Ballroom'),s('Professor Plum','Candlestick','Conservatory'),s('Professor Plum','Candlestick','Dining Room'),s('Professor Plum','Candlestick','Billiard Room'),s('Professor Plum','Candlestick','Library'),s('Professor Plum','Candlestick','Lounge'),s('Professor Plum','Candlestick','Hall'),s('Professor Plum','Candlestick','Study'),
s('Professor Plum','Dagger','Kitchen'),s('Professor Plum','Dagger','Ballroom'),s('Professor Plum','Dagger','Conservatory'),s('Professor Plum','Dagger','Dining Room'),s('Professor Plum','Dagger','Billiard Room'),s('Professor Plum','Dagger','Library'),s('Professor Plum','Dagger','Lounge'),s('Professor Plum','Dagger','Hall'),s('Professor Plum','Dagger','Study'),
s('Professor Plum','Lead Pipe','Kitchen'),s('Professor Plum','Dagger','Ballroom'),s('Professor Plum','Lead Pipe','Conservatory'),s('Professor Plum','Lead Pipe','Dining Room'),s('Professor Plum','Lead Pipe','Billiard Room'),s('Professor Plum','Lead Pipe','Library'),s('Professor Plum','Lead Pipe','Lounge'),s('Professor Plum','Lead Pipe','Hall'),s('Professor Plum','Lead Pipe','Study'),
s('Professor Plum','Revolver','Kitchen'),s('Professor Plum','Revolver','Ballroom'),s('Professor Plum','Revolver','Conservatory'),s('Professor Plum','Revolver','Dining Room'),s('Professor Plum','Revolver','Billiard Room'),s('Professor Plum','Revolver','Library'),s('Professor Plum','Revolver','Lounge'),s('Professor Plum','Revolver','Hall'),s('Professor Plum','Revolver','Study'),
s('Professor Plum','Rope','Kitchen'),s('Professor Plum','Rope','Ballroom'),s('Professor Plum','Rope','Conservatory'),s('Professor Plum','Rope','Dining Room'),s('Professor Plum','Rope','Billiard Room'),s('Professor Plum','Rope','Library'),s('Professor Plum','Rope','Lounge'),s('Professor Plum','Rope','Hall'),s('Professor Plum','Rope','Study'),
s('Professor Plum','Wrench','Kitchen'),s('Professor Plum','Wrench','Ballroom'),s('Professor Plum','Wrench','Conservatory'),s('Professor Plum','Wrench','Dining Room'),s('Professor Plum','Wrench','Billiard Room'),s('Professor Plum','Wrench','Library'),s('Professor Plum','Wrench','Lounge'),s('Professor Plum','Wrench','Hall'),s('Professor Plum','Wrench','Study'),

s('Mrs. Peacock','Candlestick','Kitchen'),s('Mrs. Peacock','Candlestick','Ballroom'),s('Mrs. Peacock','Candlestick','Conservatory'),s('Mrs. Peacock','Candlestick','Dining Room'),s('Mrs. Peacock','Candlestick','Billiard Room'),s('Mrs. Peacock','Candlestick','Library'),s('Mrs. Peacock','Candlestick','Lounge'),s('Mrs. Peacock','Candlestick','Hall'),s('Mrs. Peacock','Candlestick','Study'),
s('Mrs. Peacock','Dagger','Kitchen'),s('Mrs. Peacock','Dagger','Ballroom'),s('Mrs. Peacock','Dagger','Conservatory'),s('Mrs. Peacock','Dagger','Dining Room'),s('Mrs. Peacock','Dagger','Billiard Room'),s('Mrs. Peacock','Dagger','Library'),s('Mrs. Peacock','Dagger','Lounge'),s('Mrs. Peacock','Dagger','Hall'),s('Mrs. Peacock','Dagger','Study'),
s('Mrs. Peacock','Lead Pipe','Kitchen'),s('Mrs. Peacock','Dagger','Ballroom'),s('Mrs. Peacock','Lead Pipe','Conservatory'),s('Mrs. Peacock','Lead Pipe','Dining Room'),s('Mrs. Peacock','Lead Pipe','Billiard Room'),s('Mrs. Peacock','Lead Pipe','Library'),s('Mrs. Peacock','Lead Pipe','Lounge'),s('Mrs. Peacock','Lead Pipe','Hall'),s('Mrs. Peacock','Lead Pipe','Study'),
s('Mrs. Peacock','Revolver','Kitchen'),s('Mrs. Peacock','Revolver','Ballroom'),s('Mrs. Peacock','Revolver','Conservatory'),s('Mrs. Peacock','Revolver','Dining Room'),s('Mrs. Peacock','Revolver','Billiard Room'),s('Mrs. Peacock','Revolver','Library'),s('Mrs. Peacock','Revolver','Lounge'),s('Mrs. Peacock','Revolver','Hall'),s('Mrs. Peacock','Revolver','Study'),
s('Mrs. Peacock','Rope','Kitchen'),s('Mrs. Peacock','Rope','Ballroom'),s('Mrs. Peacock','Rope','Conservatory'),s('Mrs. Peacock','Rope','Dining Room'),s('Mrs. Peacock','Rope','Billiard Room'),s('Mrs. Peacock','Rope','Library'),s('Mrs. Peacock','Rope','Lounge'),s('Mrs. Peacock','Rope','Hall'),s('Mrs. Peacock','Rope','Study'),
s('Mrs. Peacock','Wrench','Kitchen'),s('Mrs. Peacock','Wrench','Ballroom'),s('Mrs. Peacock','Wrench','Conservatory'),s('Mrs. Peacock','Wrench','Dining Room'),s('Mrs. Peacock','Wrench','Billiard Room'),s('Mrs. Peacock','Wrench','Library'),s('Mrs. Peacock','Wrench','Lounge'),s('Mrs. Peacock','Wrench','Hall'),s('Mrs. Peacock','Wrench','Study'),

s('Reverend Green','Candlestick','Kitchen'),s('Reverend Green','Candlestick','Ballroom'),s('Reverend Green','Candlestick','Conservatory'),s('Reverend Green','Candlestick','Dining Room'),s('Reverend Green','Candlestick','Billiard Room'),s('Reverend Green','Candlestick','Library'),s('Reverend Green','Candlestick','Lounge'),s('Reverend Green','Candlestick','Hall'),s('Reverend Green','Candlestick','Study'),
s('Reverend Green','Dagger','Kitchen'),s('Reverend Green','Dagger','Ballroom'),s('Reverend Green','Dagger','Conservatory'),s('Reverend Green','Dagger','Dining Room'),s('Reverend Green','Dagger','Billiard Room'),s('Reverend Green','Dagger','Library'),s('Reverend Green','Dagger','Lounge'),s('Reverend Green','Dagger','Hall'),s('Reverend Green','Dagger','Study'),
s('Reverend Green','Lead Pipe','Kitchen'),s('Reverend Green','Dagger','Ballroom'),s('Reverend Green','Lead Pipe','Conservatory'),s('Reverend Green','Lead Pipe','Dining Room'),s('Reverend Green','Lead Pipe','Billiard Room'),s('Reverend Green','Lead Pipe','Library'),s('Reverend Green','Lead Pipe','Lounge'),s('Reverend Green','Lead Pipe','Hall'),s('Reverend Green','Lead Pipe','Study'),
s('Reverend Green','Revolver','Kitchen'),s('Reverend Green','Revolver','Ballroom'),s('Reverend Green','Revolver','Conservatory'),s('Reverend Green','Revolver','Dining Room'),s('Reverend Green','Revolver','Billiard Room'),s('Reverend Green','Revolver','Library'),s('Reverend Green','Revolver','Lounge'),s('Reverend Green','Revolver','Hall'),s('Reverend Green','Revolver','Study'),
s('Reverend Green','Rope','Kitchen'),s('Reverend Green','Rope','Ballroom'),s('Reverend Green','Rope','Conservatory'),s('Reverend Green','Rope','Dining Room'),s('Reverend Green','Rope','Billiard Room'),s('Reverend Green','Rope','Library'),s('Reverend Green','Rope','Lounge'),s('Reverend Green','Rope','Hall'),s('Reverend Green','Rope','Study'),
s('Reverend Green','Wrench','Kitchen'),s('Reverend Green','Wrench','Ballroom'),s('Reverend Green','Wrench','Conservatory'),s('Reverend Green','Wrench','Dining Room'),s('Reverend Green','Wrench','Billiard Room'),s('Reverend Green','Wrench','Library'),s('Reverend Green','Wrench','Lounge'),s('Reverend Green','Wrench','Hall'),s('Reverend Green','Wrench','Study'),

s('Colonel Mustard','Candlestick','Kitchen'),s('Colonel Mustard','Candlestick','Ballroom'),s('Colonel Mustard','Candlestick','Conservatory'),s('Colonel Mustard','Candlestick','Dining Room'),s('Colonel Mustard','Candlestick','Billiard Room'),s('Colonel Mustard','Candlestick','Library'),s('Colonel Mustard','Candlestick','Lounge'),s('Colonel Mustard','Candlestick','Hall'),s('Colonel Mustard','Candlestick','Study'),
s('Colonel Mustard','Dagger','Kitchen'),s('Colonel Mustard','Dagger','Ballroom'),s('Colonel Mustard','Dagger','Conservatory'),s('Colonel Mustard','Dagger','Dining Room'),s('Colonel Mustard','Dagger','Billiard Room'),s('Colonel Mustard','Dagger','Library'),s('Colonel Mustard','Dagger','Lounge'),s('Colonel Mustard','Dagger','Hall'),s('Colonel Mustard','Dagger','Study'),
s('Colonel Mustard','Lead Pipe','Kitchen'),s('Colonel Mustard','Dagger','Ballroom'),s('Colonel Mustard','Lead Pipe','Conservatory'),s('Colonel Mustard','Lead Pipe','Dining Room'),s('Colonel Mustard','Lead Pipe','Billiard Room'),s('Colonel Mustard','Lead Pipe','Library'),s('Colonel Mustard','Lead Pipe','Lounge'),s('Colonel Mustard','Lead Pipe','Hall'),s('Colonel Mustard','Lead Pipe','Study'),
s('Colonel Mustard','Revolver','Kitchen'),s('Colonel Mustard','Revolver','Ballroom'),s('Colonel Mustard','Revolver','Conservatory'),s('Colonel Mustard','Revolver','Dining Room'),s('Colonel Mustard','Revolver','Billiard Room'),s('Colonel Mustard','Revolver','Library'),s('Colonel Mustard','Revolver','Lounge'),s('Colonel Mustard','Revolver','Hall'),s('Colonel Mustard','Revolver','Study'),
s('Colonel Mustard','Rope','Kitchen'),s('Colonel Mustard','Rope','Ballroom'),s('Colonel Mustard','Rope','Conservatory'),s('Colonel Mustard','Rope','Dining Room'),s('Colonel Mustard','Rope','Billiard Room'),s('Colonel Mustard','Rope','Library'),s('Colonel Mustard','Rope','Lounge'),s('Colonel Mustard','Rope','Hall'),s('Colonel Mustard','Rope','Study'),
s('Colonel Mustard','Wrench','Kitchen'),s('Colonel Mustard','Wrench','Ballroom'),s('Colonel Mustard','Wrench','Conservatory'),s('Colonel Mustard','Wrench','Dining Room'),s('Colonel Mustard','Wrench','Billiard Room'),s('Colonel Mustard','Wrench','Library'),s('Colonel Mustard','Wrench','Lounge'),s('Colonel Mustard','Wrench','Hall'),s('Colonel Mustard','Wrench','Study'),

s('Mrs. White','Candlestick','Kitchen'),s('Mrs. White','Candlestick','Ballroom'),s('Mrs. White','Candlestick','Conservatory'),s('Mrs. White','Candlestick','Dining Room'),s('Mrs. White','Candlestick','Billiard Room'),s('Mrs. White','Candlestick','Library'),s('Mrs. White','Candlestick','Lounge'),s('Mrs. White','Candlestick','Hall'),s('Mrs. White','Candlestick','Study'),
s('Mrs. White','Dagger','Kitchen'),s('Mrs. White','Dagger','Ballroom'),s('Mrs. White','Dagger','Conservatory'),s('Mrs. White','Dagger','Dining Room'),s('Mrs. White','Dagger','Billiard Room'),s('Mrs. White','Dagger','Library'),s('Mrs. White','Dagger','Lounge'),s('Mrs. White','Dagger','Hall'),s('Mrs. White','Dagger','Study'),
s('Mrs. White','Lead Pipe','Kitchen'),s('Mrs. White','Dagger','Ballroom'),s('Mrs. White','Lead Pipe','Conservatory'),s('Mrs. White','Lead Pipe','Dining Room'),s('Mrs. White','Lead Pipe','Billiard Room'),s('Mrs. White','Lead Pipe','Library'),s('Mrs. White','Lead Pipe','Lounge'),s('Mrs. White','Lead Pipe','Hall'),s('Mrs. White','Lead Pipe','Study'),
s('Mrs. White','Revolver','Kitchen'),s('Mrs. White','Revolver','Ballroom'),s('Mrs. White','Revolver','Conservatory'),s('Mrs. White','Revolver','Dining Room'),s('Mrs. White','Revolver','Billiard Room'),s('Mrs. White','Revolver','Library'),s('Mrs. White','Revolver','Lounge'),s('Mrs. White','Revolver','Hall'),s('Mrs. White','Revolver','Study'),
s('Mrs. White','Rope','Kitchen'),s('Mrs. White','Rope','Ballroom'),s('Mrs. White','Rope','Conservatory'),s('Mrs. White','Rope','Dining Room'),s('Mrs. White','Rope','Billiard Room'),s('Mrs. White','Rope','Library'),s('Mrs. White','Rope','Lounge'),s('Mrs. White','Rope','Hall'),s('Mrs. White','Rope','Study'),
s('Mrs. White','Wrench','Kitchen'),s('Mrs. White','Wrench','Ballroom'),s('Mrs. White','Wrench','Conservatory'),s('Mrs. White','Wrench','Dining Room'),s('Mrs. White','Wrench','Billiard Room'),s('Mrs. White','Wrench','Library'),s('Mrs. White','Wrench','Lounge'),s('Mrs. White','Wrench','Hall'),s('Mrs. White','Wrench','Study')]).






%recon([X|T],Y):- dersom X=,s(Y,_,_);s(_,Y,_);s(_,_,Y). plasser X i liste Z der alle Y=Y, send T videre og gjenta.
recon(X,Y,Z):- writeln(Z).
recon([X|T],Y,Z):- (X=s(Y,_,_);X=s(_,Y,_);X=s(_,_,Y)),recon(T,Y,[X|Z]).
