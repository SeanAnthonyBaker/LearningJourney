using { TrackLearning as my } from '../db/schema';

using TrackLearning from '../db/schema';

@path : 'service/TrackLearning'
service TrackLearningService
{
    entity epic as
        projection on my.epics;

    entity Developer_use_cas_SRV as
        projection on my.PlannedAssignments;

    entity Developer_SRV as
        projection on my.developers;
}