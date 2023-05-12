//
//  GetCharactersByIdUseCaseImpl.swift
//  RickAndMortyChallenge
//
//  Created by Ezequiel Fritz on 11/5/23.
//

final class GetCharactersByIdUseCaseImpl: GetCharactersByIdUseCase {
    private let service: CharactersService
    private let mapper: CharactersDomainMapper

    init(
        service: CharactersService = CharactersServiceImpl(),
        mapper: CharactersDomainMapper = CharactersDomainMapperImpl()
    ) {
        self.service = service
        self.mapper = mapper
    }

    func execute(request: GetCharactersRequest) async -> UseCaseResult<[UiCharacter]> {
        do {
            let request = mapper.domainToData(request)
            let characters = try await service.getCharactersById(request: request)
            return .success(mapper.domainToPresentation(characters))
        } catch {
            return .failure(mapper.mapError(error))
        }
    }
}
