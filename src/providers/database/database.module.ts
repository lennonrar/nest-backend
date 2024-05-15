import { Module } from '@nestjs/common';
import { databaseProviders } from 'src/providers/database/database.provider';

@Module({
    providers: [...databaseProviders],
    exports: [...databaseProviders],
})
export class DatabaseModule {}
