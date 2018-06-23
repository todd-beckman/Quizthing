import 'dart:html';
import 'package:over_react/react_dom.dart' as react_dom;
import 'package:over_react/over_react.dart';

import 'package:quiz_project/app.dart';

void main() {
  // Initialize React within our Dart app
  setClientConfiguration();

  final QuizApp app = new QuizApp(
    groups: [
      new QuizGroup(
        name: 'Genwunner',
        questions: [
          new QuizQuestion(
            question:
                'If you choose Squirtle, which Pokemon is left unclaimed?',
            answer: 'Charmander',
            hint: 'Your rival will pick Bulbasaur.',
            difficulty: 1,
          ),
          new QuizQuestion(
            question:
                'Which Pokemon has this Pokedex entry? “In the distant past, it was somewhat stronger than the horribly weak descendants that exist today.”',
            answer: 'Magikarp',
            hint:
                'It is virtually worthless in terms of both power and speed. It is the most weak and pathetic Pokémon in the world.',
            difficulty: 1,
          ),
          new QuizQuestion(
            question:
                'Of the original 151 Pokemon, which four Pokemon evolve using a Moon Stone?',
            answer: 'Nidorina, Nidorino, Clefairy, and Jigglypuff.',
            hint:
                'There are four, and all can be obtained before leaving Mt Moon.',
            difficulty: 2,
          ),
          new QuizQuestion(
            question:
                'Of the original 151 Pokemon, which one can learn both Wrap and Fly?',
            answer: 'Dragonite',
            hint: 'Think snakes',
            difficulty: 3,
          ),
          new QuizQuestion(
            question:
                'Of the original 151 Pokemon, which six Pokemon cannot learn any TM or HM moves?',
            answer: 'Caterpie, Metapod, Weedle, Kakuna, Magikarp, Ditto',
            hint: 'Bugs. Bugs everywhere.',
            difficulty: 3,
          ),
          new QuizQuestion(
            question:
                'How many visible Rare Candies can be found in a single playthrough of Pokemon Red or Blue?',
            answer: '9',
            hint: 'There are 13 if you include invisible items.',
            difficulty: 10,
          ),
        ],
      ),
      new QuizGroup(
        name: 'Trading Card Game',
        questions: [
          new QuizQuestion(
            question: 'What happens as a result of playing the Bill card?',
            answer: 'Draw 2 cards',
            hint: 'Pot Of Greed',
            difficulty: 1,
          ),
          new QuizQuestion(
            question:
                'Prior to the Dragons Exalted set, which type was Dragonite In the Trading Card Game?',
            answer: 'Colorless. (Normal is also acceptable)',
            hint: 'Consider other Flying-types',
            difficulty: 2,
          ),
          new QuizQuestion(
            question:
                'Which ability negates all other Abilities in play and in players’ hands?',
            answer: 'Garbotoxin',
            hint: 'Turns the meta into *garbage*',
            difficulty: 2,
          ),
          new QuizQuestion(
            question:
                'In the Base Set, which Rare Holo Pokemon that should be able to evolve did not have an evolution?',
            answer: 'Clefairy',
            hint: '',
            difficulty: 3,
          ),
          new QuizQuestion(
            question:
                'Diego Cassiraga won the 2017 World Championships with a Gardevoir-GX deck. Which other GX Pokemon did this deck have?',
            answer: 'Tapu Lele-GX',
            hint: 'Psychic-type Legend',
            difficulty: 5,
          ),
        ],
      ),
      new QuizGroup(
        name: 'Anime And Manga',
        questions: [
          new QuizQuestion(
            question: 'Identify this Pokemon',
            imageUri: 'https://i.ytimg.com/vi/0VeXDaI-5rM/maxresdefault.jpg',
            answer: 'Jigglypuff (as seen from above)',
            hint: 'It\'s not a Pokeball.',
            difficulty: 1,
          ),
          new QuizQuestion(
            question: 'Which of Serena’s Pokemon did not evolve?',
            answer: 'Pancham',
            hint: 'Fighting-type',
            difficulty: 2,
          ),
          new QuizQuestion(
            question:
                'In the Pocket Monsters manga, which Pokemon was Red’s first Pokemon?',
            answer: 'Clefairy',
            hint: 'Intended to be the original mascot.',
            difficulty: 3,
          ),
        ],
      ),
      new QuizGroup(
        name: 'Video Game Trivia',
        questions: [
          new QuizQuestion(
            question:
                'Which Pokemon was the first pure Flying-type in the series?',
            answer: 'Tornadus',
            hint: 'It\'s still the only pure Flying-type.',
            difficulty: 1,
          ),
          new QuizQuestion(
            question:
                'Caterpie could not deal damage to Ghost-type Pokemon until Platinum version when it was capable of learning which move?',
            answer: 'Bug Bite',
            hint: 'It\'s still 1/4 effectiveness.',
            difficulty: 2,
          ),
          new QuizQuestion(
            question:
                'Which type has never had a Gym Leader specializing in it?',
            answer: 'Dark-type',
            hint:
                'Truly skilled trainers should try to win with their favorites.',
            difficulty: 2,
          ),
          new QuizQuestion(
            question:
                'Excluding Smeargle, Heatmor is the only Pokemon capable of learning which move?',
            answer: 'Fire Lash',
            hint: 'Attack that lowers the target\'s defense.',
            difficulty: 3,
          ),
          new QuizQuestion(
            question:
                'If a Pokemon had all eighteen types simultaneously, which is the only type that would deal supereffective damage to it?',
            answer: 'Rock-Type',
            hint: 'Not a hard question',
            difficulty: 2,
          ),
          new QuizQuestion(
            question:
                'Which is the only Ultra Beasts to have a species base stat that is not prime?',
            answer: 'Naganadel (its Speed is 121)',
            hint: 'Divisible by 11',
            difficulty: 3,
          ),
          new QuizQuestion(
            question:
                'Se Jun Park famously won the 2014 World Championships with Pachirisu. What was its Nature?',
            answer: 'Impish',
            hint: 'Raises Defense but lowers Special Attack',
            difficulty: 5,
          ),
        ],
      ),
      new QuizGroup(
        name: 'Grab Bag',
        questions: [
          new QuizQuestion(
            question:
                '(Competitive) If your Pokemon’s Nature is Jolly, which HP-restoring berry will confuse it when its health drops below ¼?',
            answer: 'Wiki Berry',
            hint: 'The Pinch Berries are Aquav, Wiki, Iapapa, Figy, Mago',
            difficulty: 3,
          ),
          new QuizQuestion(
            question:
                '(International) Greninja held the spotlight for the XY&Z series. What is Greninja’s Japanese name?',
            answer: 'Gekkouga',
            hint: 'ゲッコウガ',
            difficulty: 3,
          ),
          new QuizQuestion(
            question: '(Real Life) Who is the current CEO of GameFreak?',
            answer: 'Satoshi Tajiri',
            hint: 'It\'s not Masuda',
            difficulty: 3,
          ),
          new QuizQuestion(
            question:
                '(Speedrunning) Why does red bar (low health) save time in speedruns?',
            answer: 'Pokemons’ cries are skipped',
            hint: '',
            difficulty: 4,
          ),
          new QuizQuestion(
            question:
                '(Catch \'em All) Razor Claw is needed to evolve Sneasel, but which Pokemon in Sun and Moon actually holds a Razor Claw in the wild?',
            answer: 'Jangmo-o',
            hint: 'Poni Island',
            difficulty: 4,
          ),
        ],
      ),
      new QuizGroup(
        name: 'Glitches',
        questions: [
          new QuizQuestion(
            question:
                '(Gen 1) Which Pokemon’s cry does Generation 1 MissingNo use?',
            answer: 'Nidoran-Male',
            hint: 'Cheaters don\'t need hints.',
            difficulty: 9,
          ),
          new QuizQuestion(
            question:
                '(Gen 2) Which placeholder item in Generation 2 games sold for 19,660 PokeDollars?',
            answer: 'Teru-Sama',
            hint: 'Cheaters don\'t need hints.',
            difficulty: 9,
          ),
          new QuizQuestion(
            question:
                '(Gen 3) 30 Rawst Berries sell for 300 Pokedollars. How much do 300 Rawst Berries sell for?',
            answer: '440 Pokedollars',
            hint: 'Cheaters don\'t need hints.',
            difficulty: 9,
          ),
          new QuizQuestion(
            question:
                '(Gen 4) What is the receive date of a Generation 4 Bad EGG?',
            answer: 'January 0, 2000',
            hint: 'Cheaters don\'t need hints.',
            difficulty: 2,
          ),
          new QuizQuestion(
            question:
                '(Gen 5) Which move was banned from official tournaments in Generation 5?',
            answer: 'Sky Drop',
            hint: 'Cheaters don\'t need hints.',
            difficulty: 2,
          ),
        ],
      ),
    ],
  );

  // Mount / render your component.
  react_dom.render(app.content(), querySelector('#content'));
}
