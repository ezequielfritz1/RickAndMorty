//
//  GetEpisodesUseCaseImpl.swift
//  RickAndMortyChallenge
//
//  Created by Ezequiel Fritz on 11/5/23.
//

final class GetEpisodesUseCaseImpl: GetEpisodesUseCase {
    private let service: EpisodesService
    private let mapper: EpisodesDomainMapper

    init(
        service: EpisodesService = EpisodesServiceImpl(),
        mapper: EpisodesDomainMapper = EpisodesDomainMapperImpl()
    ) {
        self.service = service
        self.mapper = mapper
    }

    func execute(request: GetEpisodesRequest) async -> UseCaseResult<[UiEpisode]> {
        do {
            return .success(
                mapper.domainToPresentation(try await service.getEpisodes(request: mapper.domainToData(request)))
            )
        } catch {
            return .failure(mapper.mapError(error))
        }
    }
}
