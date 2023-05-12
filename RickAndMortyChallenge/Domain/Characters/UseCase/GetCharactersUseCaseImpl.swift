//
//  GetCharactersUseCaseImpl.swift
//  RickAndMortyChallenge
//
//  Created by Ezequiel Fritz on 10/5/23.
//

final class GetCharactersUseCaseImpl: GetCharactersUseCase {
    private let service: CharactersService
    private let mapper: CharactersDomainMapper

    init(
        service: CharactersService = CharactersServiceImpl(),
        mapper: CharactersDomainMapper = CharactersDomainMapperImpl()
    ) {
        self.service = service
        self.mapper = mapper
    }

    func execute() async -> UseCaseResult<[UiCharacter]> {
        do {
            return .success(mapper.domainToPresentation(try await service.getAllCharacters()))
        } catch {
            return .failure(mapper.mapError(error))
        }
    }
}
