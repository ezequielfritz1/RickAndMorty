//
//  EpisodesDomainMapper.swift
//  RickAndMortyChallenge
//
//  Created by Ezequiel Fritz on 11/5/23.
//

protocol EpisodesDomainMapper: DomainMapper {
    func domainToPresentation(_ data: [Episode]) -> [UiEpisode]

    func domainToData(_ data: GetEpisodesRequest) -> GetEpisodesRequestDTO
}
