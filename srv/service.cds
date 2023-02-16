using { TrackLearning as my } from '../db/schema';

using TrackLearning from '../db/schema';

@path : 'service/TrackLearning'
service TrackLearningService
{
    entity epic as
        projection on my.epics;
}

annotate TrackLearningService with @requires :
[
    'authenticated-user'
];
