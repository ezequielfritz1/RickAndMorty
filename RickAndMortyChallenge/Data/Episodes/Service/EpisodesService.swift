//
//  EpisodesService.swift
//  RickAndMortyChallenge
//
//  Created by Ezequiel Fritz on 11/5/23.
//

protocol EpisodesService {
    func getEpisodes(request: GetEpisodesRequestDTO) async throws -> [Episode]
}
