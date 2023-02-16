using { TrackLearning as my } from '../db/schema';

using TrackLearning from '../db/schema';

@path : 'service/TrackLearning'
@requires : 'authenticated-user'
service TrackLearningService
{
    entity epic as
        projection on my.epics;
}


