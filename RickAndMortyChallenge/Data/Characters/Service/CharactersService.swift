//
//  CharactersService.swift
//  RickAndMortyChallenge
//
//  Created by Ezequiel Fritz on 10/5/23.
//

protocol CharactersService {
    func getAllCharacters() async throws -> [Character]
    func getCharactersById(request: GetCharactersRequestDTO) async throws -> [Character]
}
