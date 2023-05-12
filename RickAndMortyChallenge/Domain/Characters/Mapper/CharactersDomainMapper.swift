//
//  CharactersDomainMapper.swift
//  RickAndMortyChallenge
//
//  Created by Ezequiel Fritz on 10/5/23.
//

protocol CharactersDomainMapper: DomainMapper {
    func domainToPresentation(_ data: [Character]) -> [UiCharacter]

    func domainToData(_ data: GetCharactersRequest) -> GetCharactersRequestDTO
}
