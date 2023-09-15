class Cancion {
  String title;
  String author;
  String genre;
  String lyrics;
  String url;

  Cancion({
    required this.title,
    required this.author,
    required this.genre,
    required this.lyrics,
    required this.url,
  });

  List<String> get lyricsSplitted => lyrics.split('\n\n');
}

Map<String, dynamic> milHoras = {
  'title': 'Mil Horas',
  'author': 'Los Abuelos De La Nada',
  'genre': 'Rock en español',
  'lyrics': '''
Hace frío y estoy lejos de casa. 
Hace tiempo que estoy sentado sobre esta piedra. 
Yo me pregunto 
¿Para qué sirven las guerras?

Tengo un cohete en el pantalón. 
Vos estás tan fría como la nieve a mi alrededor. 
Vos estás tan blanca, que yo no sé qué hacer.

La otra noche te esperé 
Bajo la lluvia dos horas. 
Mil horas como un perro. 
Y cuando llegaste me miraste
Y me dijiste, "Loco, 
Estás mojado, ya no te quiero".

En el circo vos ya sos una estrella. 
Una estrella roja que todo se lo imagina. 
Si te preguntan, vos no me conocías.
Te tengo un cohete en el pantalón. 
Vos estás tan fría como la nieve a mi alrededor. 
Vos estás tan blanca, que ya no sé qué hacer.

La otra noche te esperé 
Bajo la lluvia dos horas. 
Mil horas como un perro. 
Y cuando llegaste me miraste 
Y me dijiste, "Loco,
Estás mojado, ya no te quiero".
''',
  'url':
      'https://www.youtube.com/watch?v=O4uBSbkxoik&ab_channel=LosAbuelosDeLaNada-Topic',
};

Map<String, dynamic> ciegaSordomuda = {
  'title': 'Ciega Sordomuda',
  'author': 'Shakira',
  'genre': 'Pop',
  'lyrics': '''
Se me acaba el argumento 
Y la metodología 
Cada vez que se aparece frente 
A mí tu anatomía.

Por que este amor ya no entiende
De consejos, ni razones. 
Se alimenta de pretextos
Y le faltan pantalones.

Este amor no me permite 
Estar en pie
Porque ya hasta me ha quebrado
Los talones.
Aunque me levante volveré a caer.
Si te acercas nada es útil
Para esta inútil.

Bruta, ciega, sordomuda, 
Torpe, traste y testaruda. 
Es todo lo que he sido. 
Por ti me he convertido 
En una cosa que no hace
Otra cosa mas que amarte.
Pienso en ti día y noche
Y no se como olvidarte.

Cuántas veces he intentado
Enterrarte en mi memoria.
Y aunque diga ya no más
Es otra vez la misma historia.
Por que este amor siempre sabe
Hacerme respirar profundo.
Ya me trae por la izquierda
Y de pelea con el mundo.
''',
  'url': 'https://www.youtube.com/watch?v=B3gbisdtJnA&ab_channel=shakiraVEVO',
};

Map<String, dynamic> fuentesDeOrtiz = {
  'title': 'Fuentes de Ortiz',
  'author': 'Ed Maverick',
  'genre' : 'Rock en español',
  'lyrics': '''
Ya dime si quieres estar conmigo o si mejor me voy. 
Tus besos dicen que tú sí me quieres pero tus palabras no. 
Y al chile, yo hasta moriría por ti pero dices que no. 
No eres directa, neta, ya me estás cansando, se concreta por favor.

Y en la noche en que las estrellas salen 
Yo pienso en ti, mi amor.
¿Qué me hiciste?, de mi cabeza no sales 
Y no lo digo por mamón.

Si me dices para ti que soy 
No dudaré en hacerte tan feliz. 
Eres especial para mí.
Dime ¿por qué me haces sufrir? 
Yo te olvidaré desde las Fuentes de Ortiz.

Soy inseguro cuando dices que me quieres porque creo que no.
Como bebé caigo pero sí redondito en tu trampa, amor.
Ya dime si tú me quieres por favor.
Y he sufrido y me he empedado tanto por tu amor.

Y en la noche en que las estrellas salen 
Yo pienso en ti, mi amor.
¿Qué me hiciste?, de mi cabeza no sales 
Y no lo digo por mamón.
''',
  'url':
      'https://www.youtube.com/watch?v=PaoCQHwTPg4&ab_channel=EdMaverickVEVO',
};

Map<String, dynamic> minero = {
  'title': 'Minero',
  'author': 'El Rubius',
  'genre' : 'Parodia',
  'lyrics': '''
De lunes a domingo voy todo viciado. 
La antorcha prendida luz por todos lados.
Picando y picando y yo no te he encontrado. 
Las manecillas giran ya hay zombies sonando.
Bajandome la vida y no voy ni armado. 
Bebiendome la leche a sorbos y a tragos.

Te vi así de frente que tremendo impacto, pa picarte un poquito dime
Si hay que ser minero. 
Romper el pico en el hierro. 
No importa el creeper que venga pa que sepas que te quiero
Como un buen minero. Me juego la vida por ti.

Te cuentan que ya me vieron solitario en la habitación.
Que ya no duermo ni desvario.
Que a las gallinas no les doy amor
¿Y tú por donde estas?
Que la presión me va a matar.
Te picare vuelve conmigo.
Y que tu no sabes
Que yo te necesito como el horno al coal.
Diamante si yo te encuentro yo te pico toda.

Te vi así de frente que tremendo impacto, pa picarte un poquito dime. 
Si hay que ser minero. 
Romper el pico en el hierro. 
No importa el creeper que venga pa que sepas que te quiero
Como un buen minero. Me juego la vida por ti.

De la nieve al desierto, si que te necesito.
Y de la jungla a los prados, quiero que estés conmigo.
Y bajo tierra mi amor.
En el agua tu y yo.
No importa mi amada.
''',
  'url': 'https://www.youtube.com/watch?v=VZzSBv6tXMw&ab_channel=elrubiusOMG',
};

Map<String, dynamic> loQueSiento = {
  'title': 'Lo que Siento',
  'author': 'Cuco',
  'genre' : 'Indie pop',
  'lyrics': '''
Dreaming of you when I'm alone.
Baby, don't trip, I'm coming home.
Kick it with me, I don't care if the sun is gone.
Baby, don't cry when I am gone.
Promise you're everything I want.
This is for you, baby, listen, it's your song.

Oye cariño, solo pienso en ti
When I wake up in the morning until I go back to sleep.
How I wish you were mine, I think of you all the time.
I always feel like I'm flying, baby, you make me feel fine

Lost in the words that you say to me.
Y pasando tiempo juntos is the ultimate dream.
I'm on the top of the world, baby girl, can't you see?
I found my perfect girl, I wanna make you my queen.

Time and time again I can be feeling real sad
'Cause mi sueño no se ha hecho una realidad
Pero el tiempo dirá, el tiempo dirá
If we go spend our lives together en lo que el mundo gira.

I promise I don't want nobody else to be around me but you
And nobody's touch and nobody's lips can make me feel like yours do.
Our hands in a lock, nuestros labios se conocen.
Nuestra noche es corta pero hermosa, we'll be okay.
''',
  'url': 'https://www.youtube.com/watch?v=AjGkbFqi67c&ab_channel=Cuco',
};

Map<String, dynamic> nerverGonnaGiveYouUp = {
  'title': 'Never Gonna Give You Up',
  'author': 'Rick Astley',
  'genre' : 'Pop',
  'lyrics': '''
We're no strangers to love,
You know the rules and so do I.
A full commitment's what I'm thinking of.
You wouldn't get this from any other guy.

I just wanna tell you how I'm feeling,
Gotta make you understand.

Never gonna give you up.
Never gonna let you down.
Never gonna run around and desert you.
Never gonna make you cry.
Never gonna say goodbye.
Never gonna tell a lie and hurt you.

We've known each other for so long.
Your heart's been aching, but you're too shy to say it.
Inside, we both know what's been going on.
We know the game and we're gonna play it.

And if you ask me how I'm feeling,
Don't tell me you're too blind to see.
''',
  'url': 'https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab_channel=RickAstley',
};
