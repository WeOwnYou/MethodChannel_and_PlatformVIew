package pigeon;

import android.app.Activity;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

import io.flutter.plugin.common.BinaryMessenger;


public class StartActivity extends Activity {
    private static class MyApi implements Pigeon.DataApi {
        @NonNull
        public List<Pigeon.Data> search(@NonNull String keyword) {
            Pigeon.Data result = new Pigeon.Data();
            result.setSomeText(keyword);
            result.setOtherText(String.format("%s's Life", keyword));
            return Collections.singletonList(result);
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Pigeon.DataApi.setup(getBinaryMessenger(), new MyApi());
    }

    private BinaryMessenger getBinaryMessenger() {
        return new BinaryMessenger() {
            @Override
            public void send(@NonNull String channel, @Nullable ByteBuffer message) {

            }

            @Override
            public void send(@NonNull String channel, @Nullable ByteBuffer message, @Nullable BinaryReply callback) {

            }

            @Override
            public void setMessageHandler(@NonNull String channel, @Nullable BinaryMessageHandler handler) {

            }
        };
    }
}