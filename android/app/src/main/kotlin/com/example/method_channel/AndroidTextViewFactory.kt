package com.example.method_channel

import android.content.Context
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory
import pigeon.Pigeon

class AndroidTextViewFactory (messenger: BinaryMessenger) : PlatformViewFactory(Pigeon.DataApi.getCodec()){
    private val binaryMessenger: BinaryMessenger = messenger
    private lateinit var myTextView: MyTextView

    override fun create(context: Context, viewId: Int, args: Any?) : PlatformView{
        val creationParams = args as Map<String?, Any?>?
        myTextView = MyTextView(context, viewId, creationParams, binaryMessenger)
        return myTextView
    }

    fun setText(data: Pigeon.Data){
        myTextView.setText(data)
    }
}