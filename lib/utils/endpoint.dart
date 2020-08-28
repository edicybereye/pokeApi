class EndpointURL {
  static String server(int offset, int limit) {
    return "https://pokeapi.co/api/v2/pokemon/?offset=$offset&limit=$limit";
  }
}
