List<Show> bingeWorthy = [
  Show(
    creator: 'Ross Duffer',
    image: 'assets/images/strangerthings.png',
    match: '94',
    numSeasons: '3',
    year: '2016',
    ageCertImage: 'assets/images/12a.png',
    cast: 'Henry Cavill, Anya Chalotra',
    episodes: episodes,
  ),
  Show(
    creator: 'Ross Duffer',
    image: 'assets/images/ragnarok.png',
    match: '94',
    numSeasons: '3',
    year: '2016',
    ageCertImage: 'assets/images/12a.png',
    cast: 'Henry Cavill, Anya Chalotra',
    episodes: episodes,
  ),
  Show(
    creator: 'Ross Duffer',
    image: 'assets/images/sabrina.png',
    match: '94',
    numSeasons: '3',
    year: '2016',
    ageCertImage: 'assets/images/12a.png',
    cast: 'Henry Cavill, Anya Chalotra',
    episodes: episodes,
  ),
  Show(
    creator: 'Ross Duffer',
    image: 'assets/images/messiah.png',
    match: '94',
    numSeasons: '3',
    year: '2016',
    ageCertImage: 'assets/images/12a.png',
    cast: 'Henry Cavill, Anya Chalotra',
    episodes: episodes,
  ),
];

List<Show> trending = [
  Show(
    creator: 'Andrzej Sapkowski',
    image: 'assets/images/lilyhammer.png',
    match: '98',
    numSeasons: '2',
    year: '2019',
    ageCertImage: 'assets/images/15.png',
    cast: 'Henry Cavill, Anya Chalotra',
    episodes: episodes,
  ),
  Show(
    creator: 'Andrzej Sapkowski',
    image: 'assets/images/witcher.png',
    match: '98',
    numSeasons: '2',
    year: '2019',
    ageCertImage: 'assets/images/18.png',
    cast: 'Henry Cavill, Anya Chalotra',
    episodes: episodes,
  ),
  Show(
    creator: 'Andrzej Sapkowski',
    image: 'assets/images/breaking.png',
    match: '98',
    numSeasons: '2',
    year: '2019',
    ageCertImage: 'assets/images/15.png',
    cast: 'Henry Cavill, Anya Chalotra',
    episodes: episodes,
  ),
  Show(
    creator: 'Andrzej Sapkowski',
    image: 'assets/images/supernatural.png',
    match: '98',
    numSeasons: '2',
    year: '2019',
    ageCertImage: 'assets/images/15.png',
    cast: 'Henry Cavill, Anya Chalotra',
    episodes: episodes,
  ),
];

class Show {
  final String creator;
  final String image;
  final String match;
  final String numSeasons;
  final String year;
  final String ageCertImage;
  final String cast;
  final List<Episode> episodes;

  Show({
    this.creator,
    this.image,
    this.match,
    this.numSeasons,
    this.year,
    this.ageCertImage,
    this.cast,
    this.episodes,
  });
}

List<Episode> episodes = [
  Episode(
    name: 'Episode 1',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Incididunt ut labore et.',
    length: '43m',
    thumbnail: 'assets/images/ep1.png',
  ),
  Episode(
    name: 'Episode 2',
    description:
        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto.',
    length: '50m',
    thumbnail: 'assets/images/ep2.png',
  ),
  Episode(
    name: 'Episode 3',
    description:
        'Non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem.',
    length: '42m',
    thumbnail: 'assets/images/ep3.png',
  ),
  Episode(
    name: 'Episode 4',
    description:
        'Ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit.',
    length: '58m',
    thumbnail: 'assets/images/ep4.png',
  ),
  Episode(
    name: 'Episode 5',
    description:
        'Commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat.',
    length: '51m',
    thumbnail: 'assets/images/ep5.png',
  ),
  Episode(
    name: 'Episode 6',
    description:
        'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa.',
    length: '47m',
    thumbnail: 'assets/images/ep6.png',
  ),
  Episode(
    name: 'Episode 7',
    description:
        'LTemporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.',
    length: '62m',
    thumbnail: 'assets/images/ep7.png',
  ),
];

class Episode {
  final String name;
  final String thumbnail;
  final String length;
  final String description;
  Episode({this.name, this.thumbnail, this.length, this.description});
}

List<Preview> previews = [
  Preview(
      name: 'assets/images/sexeducationlogo.png',
      image: 'assets/images/sexeducation.png'),
  Preview(
    name: 'assets/images/peakyblinderslogo.png',
    image: 'assets/images/peakyblinders.png',
  ),
  Preview(
      name: 'assets/images/ladybirdlogo.png',
      image: 'assets/images/ladybird.png'),
  Preview(
      name: 'assets/images/strangerlogo.png',
      image: 'assets/images/stranger.png'),
];

class Preview {
  String name;
  String image;
  Preview({this.name, this.image});
}
