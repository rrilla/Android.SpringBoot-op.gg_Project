package com.project.opggapp.paging;

import androidx.annotation.NonNull;
import androidx.paging.DataSource;
import androidx.paging.ItemKeyedDataSource;

import com.project.opggapp.model.RankData;

public class RakingTierDataSource extends ItemKeyedDataSource<Long, RankData> {

    // 팩토리 클래스
    public static class Factory extends DataSource.Factory<Long, RankData> {
        @Override
        public DataSource<Long, RankData> create() {
            return new RakingTierDataSource();
        }
    }

    private RakingTierDataSource() {}

    @Override
    public void loadInitial(@NonNull LoadInitialParams<Long> params, @NonNull LoadInitialCallback<RankData> callback) {

    }

    @Override
    public void loadAfter(@NonNull LoadParams<Long> params, @NonNull LoadCallback<RankData> callback) {

    }

    @Override
    public void loadBefore(@NonNull LoadParams<Long> params, @NonNull LoadCallback<RankData> callback) {

    }

    @NonNull
    @Override
    public Long getKey(@NonNull RankData item) {
        return null;
    }
}
